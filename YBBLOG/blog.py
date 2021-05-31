from flask import Flask,render_template,flash,redirect,url_for,session,logging,request
from flask_mysqldb import MySQL
import tweepy
from wtforms import Form,StringField,TextAreaField,PasswordField,validators
from passlib.hash import sha256_crypt
from functools import wraps
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.linear_model import LogisticRegression
from nltk.corpus import stopwords 
import re    

# Kullanıcı Giriş Decorator'ı
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "logged_in" in session:
            return f(*args, **kwargs)
        else:
            flash("Bu sayfayı görüntülemek için lütfen giriş yapın.","danger")
            return redirect(url_for("login"))

    return decorated_function
# Kullanıcı Kayıt Formu
class RegisterForm(Form):
    name = StringField("İsim Soyisim",validators=[validators.Length(min = 4,max = 25)])
    username = StringField("Kullanıcı Adı",validators=[validators.Length(min = 5,max = 35)])
    email = StringField("Email Adresi",validators=[validators.Email(message = "Lütfen Geçerli Bir Email Adresi Girin...")])
    password = PasswordField("Parola:",validators=[
        validators.DataRequired(message = "Lütfen bir parola belirleyin"),
        validators.EqualTo(fieldname = "confirm",message="Parolanız Uyuşmuyor...")
    ])
    confirm = PasswordField("Parola Doğrula")
class LoginForm(Form):
    username = StringField("Kullanıcı Adı")
    password = PasswordField("Parola")
app = Flask(__name__)
app.secret_key= "ybblog"

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "ybblog"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)


@app.route("/" ,methods = ["GET","POST"])
@login_required
def index():
    consumer_key = "VflftCCaAPMpc6nF7ftu68L3P"
    consumer_secret = "glKItKyLDZOJVw3RBErRW3Xp2kxBWQo2xaGFQC3LOU1jYIDxAI"
    access_token = "1381581877-CI2dNdBv0S2vxDf1PnNZLNa3AyATgv16pBHj0HQ"
    access_token_secret = "8mKQaA9gd4okzUcZfTW8QJoPxXOAOulDUvk3L6xY5RYOJ"
    auth = tweepy.OAuthHandler(consumer_key,consumer_secret)
    auth.set_access_token(access_token,access_token_secret)
    api = tweepy.API(auth)
    #user = str(session["username"],)
    user_id = int(session["userid"],)
    tweets = api.user_timeline("@"+str(session["username"],))
    for i in tweets:
        cursor = mysql.connection.cursor()
        sorgu = "INSERT INTO `user_timeline`(`tweet`, `retweetcount`, `user_id`, `geo`) VALUES (%s,%s,%s,%s) "
        cursor.execute(sorgu,(i.text,i.retweet_count,user_id,i.geo))
        mysql.connection.commit()
        cursor.close()
    cursor = mysql.connection.cursor()
    sorgu= "Select * From user_timeline where user_id = %s"
    result = cursor.execute(sorgu,(session["userid"],))
    if result > 0:
        user_tweet = cursor.fetchall()
        return render_template("index.html",user_tweet = user_tweet)
        pass
    else:
        return render_template("index.html")
@app.route("/about")
def about():
    file = r'YBBLOG\turkish_cyberbullying_data.csv'
    df = pd.read_csv(file)
    df.head()
    stops = set(stopwords.words('turkish'))
    exc_letters_pattern = '[^a-zçğışöü]'
    def text_to_wordlist(text, remove_stopwords=False, return_list=False):
    # 1. convert to lower
        text = text.lower()
    # 2. replace special letters
        special_letters = {'î':'i', 'â': 'a'}
        for sp_let, tr_let in special_letters.items():
            text = re.sub(sp_let, tr_let, text)
    # 3. remove non-letters
        text = re.sub(exc_letters_pattern, ' ', text)
    # 4. split
        wordlist = text.split()
    # 5. remove stopwords
        if remove_stopwords:
            wordlist = [w for w in wordlist if w not in stops]
    # 6.
        if return_list:
            return wordlist
        else:
            return ' '.join(wordlist)
    clean_messages = []
    for message in df['message']:
        clean_messages.append(text_to_wordlist(message, remove_stopwords=True, return_list=False))    

    X_train, X_test, y_train, y_test = train_test_split(df['message'], df['cyberbullying'], random_state = 0)

#CountVectorizer'ı başlatıyoruz ve eğitim verilerimize uyguluyoruz. Verilerin geçme sıklığınına göre matrislere çevirilmesini sağlar
    vect = CountVectorizer(encoding ='iso-8859-9').fit(X_train)

#X_train'deki belgeleri bir belge terim matrisine dönüştürürüz
    X_train_vectorized = vect.transform(X_train) 
#Bu özellik matrisi X_ train_ vectorized'e dayanarak Lojistik Regresyon sınıflandırıcısını eğiteceğiz
    model = LogisticRegression()
    model.fit(X_train_vectorized, y_train)
    model = LogisticRegression()
    model.fit(X_train_vectorized, y_train)
#Daha sonra, X_test kullanarak tahminler yapacağız ve eğri puanının altındaki alanı hesaplayacağız.
    predictions = model.predict(vect.transform(X_test))
    cursor = mysql.connection.cursor()

    sorgu = "Select * From user_replies where user_id = %s"
    result = cursor.execute(sorgu,(session["userid"],))
    if result > 0:
        user_replies = cursor.fetchall()
        for user_replies in user_replies:
            user_replies1=[user_replies['tweet']]
            predictions2 = model.predict(vect.transform(user_replies1))
            sorgu2 = "Update user_replies Set prediction = %s where id = %s "
            cursor = mysql.connection.cursor()
            cursor.execute(sorgu2,(int(predictions2),user_replies['id']))
            mysql.connection.commit()
        sorgu = "Select * From user_replies where user_id = %s"
        result = cursor.execute(sorgu,(session["userid"],))
        user_replies = cursor.fetchall()
        return render_template("about.html",user_replies = user_replies)
    else:
        return render_template("about.html")
    
    return render_template("about.html")
# Makale Sayfası
@app.route("/articles")
def articles():
    consumer_key = "VflftCCaAPMpc6nF7ftu68L3P"
    consumer_secret = "glKItKyLDZOJVw3RBErRW3Xp2kxBWQo2xaGFQC3LOU1jYIDxAI"
    access_token = "1381581877-CI2dNdBv0S2vxDf1PnNZLNa3AyATgv16pBHj0HQ"
    access_token_secret = "8mKQaA9gd4okzUcZfTW8QJoPxXOAOulDUvk3L6xY5RYOJ"
    auth = tweepy.OAuthHandler(consumer_key,consumer_secret)
    auth.set_access_token(access_token,access_token_secret)
    api = tweepy.API(auth)
    #user = str(session["username"],)
    user_id = int(session["userid"],)
    tweets_replies = api.search(q=str(session["username"],),count=100,lang="tr")
    for tweet in tweets_replies:
        #print (f"{tweet.user.name}:{tweet.text}")
        cursor = mysql.connection.cursor()
        sorgu = "INSERT INTO `user_replies`(`username`,`tweet`, `user_id`) VALUES (%s,%s,%s) "
        cursor.execute(sorgu,(tweet.user.name,tweet.text,user_id))
        mysql.connection.commit()
        cursor.close()
    cursor = mysql.connection.cursor()

    sorgu = "Select * From user_replies where user_id = %s"
    result = cursor.execute(sorgu,(session["userid"],))
    if result > 0:
        user_replies = cursor.fetchall()
        return render_template("articles.html",user_replies = user_replies)
    else:
        return render_template("articles.html")


#Kayıt Olma
@app.route("/register",methods = ["GET","POST"])
def register():
    form = RegisterForm(request.form)

    if request.method == "POST" and form.validate():
        name = form.name.data
        username = form.username.data
        email = form.email.data
        password = sha256_crypt.encrypt(form.password.data)

        cursor = mysql.connection.cursor()

        sorgu = "Insert into users(name,email,username,password) VALUES(%s,%s,%s,%s)"

        cursor.execute(sorgu,(name,email,username,password))
        mysql.connection.commit()

        cursor.close()
        flash("Başarıyla Kayıt Oldunuz...","success")
        return redirect(url_for("login"))
    else:
        return render_template("register.html",form = form)
# Login İşlemi
@app.route("/login",methods =["GET","POST"])
def login():
    form = LoginForm(request.form)
    if request.method == "POST":
       username = form.username.data
       password_entered = form.password.data

       cursor = mysql.connection.cursor()

       sorgu = "Select * From users where username = %s"

       result = cursor.execute(sorgu,(username,))

       if result > 0:
           data = cursor.fetchone()
           real_password = data["password"]
           if sha256_crypt.verify(password_entered,real_password):
               flash("Başarıyla Giriş Yaptınız...","success")

               session["logged_in"] = True
               session["username"] = username
               session["userid"] = data["id"]

               return redirect(url_for("index"))
           else:
               flash("Parolanızı Yanlış Girdiniz...","danger")
               return redirect(url_for("login")) 

       else:
           flash("Böyle bir kullanıcı bulunmuyor...","danger")
           return redirect(url_for("login"))

    
    return render_template("login.html",form = form)


# Logout İşlemi
@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("index"))
# Makale Ekleme


# Makale Form
class ArticleForm(Form):
    title = StringField("Makale Başlığı",validators=[validators.Length(min = 5,max = 100)]) 
    content = TextAreaField("Makale İçeriği",validators=[validators.Length(min = 10)])


if __name__ == "__main__":
    app.run(debug=True)
