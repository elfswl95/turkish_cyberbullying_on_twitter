# -*- coding: utf-8 -*-
"""
Created on Sat May 15 19:15:25 2021

@author: elfsw
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import label_binarize

#import warnings
#warnings.filterwarnings('ignore')
#from google.colab import files
#uploaded = files.upload()
#import io
file = r'C:\Users\elfsw\OneDrive\Masaüstü\VsCode Python\YBBLOG\turkish_cyberbullying_data.csv'
data = pd.read_csv(file)
# Dataset is now stored in a Pandas Dataframe
data.head(10)
data.info()
data.cyberbullying.value_counts()
y = data.cyberbullying.values
x = data.message.values

#Train-Test Split
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x,y,test_size=0.25,random_state=42)
import nltk
nltk.download('stopwords')
#Stopwords!

from nltk.corpus import stopwords
stop = stopwords.words("turkish")

# First of all: Count Vectorizer

from sklearn.feature_extraction.text import CountVectorizer
vectorizer = CountVectorizer(min_df=5,stop_words=stop,ngram_range=(1,3))
vectorizer.fit(x)
#Bag of Words
BoW = vectorizer.transform(x)
repr(BoW)
feature_names = vectorizer.get_feature_names()
print("100 ile 110 arasındaki değerler:\n{}".format(feature_names[100:110]))
#TFIDF Vectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
for min_df in [1,2,3,4,5,6]:
    for n_gram in [(1,1),(1,2),(1,3),(2,3)]:
        tf_vectorizer = TfidfVectorizer(min_df=min_df, stop_words=stop,ngram_range=n_gram)
        veri1 = tf_vectorizer.fit_transform(x)
        best = veri1.max(axis=0).toarray().ravel()
        sort_by_tfidf = best.argsort()
        feature_names = np.array(tf_vectorizer.get_feature_names())
        print("Vocabularies using min_df={} and n_gram={} with highest tfidf: \n{}".format(min_df, n_gram, feature_names[sort_by_tfidf[-20:]]))
        print("The number of vocabularies: {}".format(len(tf_vectorizer.vocabulary_)))
        sort_by_tfidf = np.argsort(tf_vectorizer.idf_)
        print("Vocabularies with lowest idf:\n{}".format(feature_names[sort_by_tfidf[:20]]))
        print('-----------------------------------')
#TFIDF Vectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
for min_df in [1,2,3,4,5,6]:
    for n_gram in [(1,1),(1,2),(1,3),(2,3)]:
        tf_vectorizer = TfidfVectorizer(min_df=min_df, stop_words=stop,ngram_range=n_gram)
        veri1 = tf_vectorizer.fit_transform(x)
        best = veri1.max(axis=0).toarray().ravel()
        sort_by_tfidf = best.argsort()
        feature_names = np.array(tf_vectorizer.get_feature_names())
        print("Vocabularies using min_df={} and n_gram={} with highest tfidf: \n{}".format(min_df, n_gram, feature_names[sort_by_tfidf[-20:]]))
        print("The number of vocabularies: {}".format(len(tf_vectorizer.vocabulary_)))
        sort_by_tfidf = np.argsort(tf_vectorizer.idf_)
        print("Vocabularies with lowest idf:\n{}".format(feature_names[sort_by_tfidf[:20]]))
        print('-----------------------------------')
#TFIDF Vectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
for min_df in [1,2,3,4,5,6]:
    for n_gram in [(1,1),(1,2),(1,3),(2,3)]:
        tf_vectorizer = TfidfVectorizer(min_df=min_df, stop_words=stop,ngram_range=n_gram)
        veri1 = tf_vectorizer.fit_transform(x)
        best = veri1.max(axis=0).toarray().ravel()
        sort_by_tfidf = best.argsort()
        feature_names = np.array(tf_vectorizer.get_feature_names())
        print("Vocabularies using min_df={} and n_gram={} with highest tfidf: \n{}".format(min_df, n_gram, feature_names[sort_by_tfidf[-20:]]))
        print("The number of vocabularies: {}".format(len(tf_vectorizer.vocabulary_)))
        sort_by_tfidf = np.argsort(tf_vectorizer.idf_)
        print("Vocabularies with lowest idf:\n{}".format(feature_names[sort_by_tfidf[:20]]))
        print('-----------------------------------')#TFIDF Vectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
for min_df in [1,2,3,4,5,6]:
    for n_gram in [(1,1),(1,2),(1,3),(2,3)]:
        tf_vectorizer = TfidfVectorizer(min_df=min_df, stop_words=stop,ngram_range=n_gram)
        veri1 = tf_vectorizer.fit_transform(x)
        best = veri1.max(axis=0).toarray().ravel()
        sort_by_tfidf = best.argsort()
        feature_names = np.array(tf_vectorizer.get_feature_names())
        print("Vocabularies using min_df={} and n_gram={} with highest tfidf: \n{}".format(min_df, n_gram, feature_names[sort_by_tfidf[-20:]]))
        print("The number of vocabularies: {}".format(len(tf_vectorizer.vocabulary_)))
        sort_by_tfidf = np.argsort(tf_vectorizer.idf_)
        print("Vocabularies with lowest idf:\n{}".format(feature_names[sort_by_tfidf[:20]]))
        print('-----------------------------------')
from sklearn.svm import LinearSVC
from sklearn.naive_bayes import MultinomialNB
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.metrics import confusion_matrix
from sklearn.metrics import precision_score, recall_score
from sklearn.metrics import f1_score, roc_curve, auc, roc_auc_score
from sklearn.pipeline import Pipeline
import matplotlib.pyplot as plt
LinearSVC_count = Pipeline([
    ('countvectorizer',CountVectorizer()),
    ('LinearSVC',LinearSVC(max_iter=1000))
])

LinearSVC_tfidf = Pipeline([
        ('tfidfvectorizer', TfidfVectorizer()),
        ('LinearSVC', LinearSVC(max_iter=1000))
])
# İkinci modelimiz Decision Tree
Decision_count = Pipeline([
        ('countvectorizer', CountVectorizer()),
        ('decisiontreeclassifier', DecisionTreeClassifier())
])

Decision_tfidf = Pipeline([
        ('tfidfvectorizer', TfidfVectorizer()),
        ('decisiontreeclassifier', DecisionTreeClassifier())
])
# İkinci modelimiz Decision Tree
NB_count = Pipeline([
        ('countvectorizer', CountVectorizer()),
        ('decisiontreeclassifier', MultinomialNB())
])

NB_tfidf = Pipeline([
        ('tfidfvectorizer', TfidfVectorizer()),
        ('decisiontreeclassifier', MultinomialNB())
])
# Son olarak: Random Forest
RandomForest_count = Pipeline([
        ('countvectorizer', CountVectorizer()),
        ('randomforestclassifier', RandomForestClassifier(n_estimators=100))
])

RandomForest_tfidf = Pipeline([
        ('tfidfvectorizer', TfidfVectorizer()),
        ('randomforestclassifier', RandomForestClassifier(n_estimators=100))
])
# İlk olarak bünyesinde Count Vectorizer olan parametreler.
parameters_of_svc_count = [ 
    {
        'LinearSVC__C': [0.01, 0.1, 1, 10, 100], 
        'countvectorizer__min_df': [1,3,5], 
        'countvectorizer__stop_words': [None, stop],
        'countvectorizer__ngram_range': [(1, 1), (1, 2), (1, 3), (2, 3)]
    } 
]

parameters_general_count = [ 
    {
        'countvectorizer__min_df': [1,3,5], 
        'countvectorizer__stop_words': [None, stop],
        'countvectorizer__ngram_range': [(1, 1), (1, 2), (1, 3), (2, 3)]
    }
]
parameters_of_svc_tfidf = [ 
    {
        'LinearSVC__C': [0.01, 0.1, 1, 10, 100], 
        'tfidfvectorizer__min_df': [1,3,5], 
        'tfidfvectorizer__stop_words': [stop],
        'tfidfvectorizer__ngram_range': [(1, 1), (1, 2), (1, 3), (2, 3)]
    } 
]

parameters_of_general_tfidf = [ 
    {
        'tfidfvectorizer__min_df': [1,3,5], 
        'tfidfvectorizer__stop_words': [stop],
        'tfidfvectorizer__ngram_range': [(1, 1), (1, 2), (1, 3), (2, 3)]
    }
]
for models, parameters, name in zip([LinearSVC_count, NB_count,Decision_count, RandomForest_count],
                                    [parameters_of_svc_count, parameters_general_count, parameters_general_count, parameters_general_count],
                                    ["LinearSVC","Naive Bayes","Decision Tree","Random Forest"]):

    grid = GridSearchCV(models, parameters, cv=5)
    grid.fit(x_train, y_train)
    print("Model ismi: "+ name)
    print("En iyi cross-validation score: {:.2f}".format(grid.best_score_ * 100))
    print("En iyi parametreler: ", grid.best_params_)
    
    y_train_pred = grid.predict(x_train)
    print(confusion_matrix(y_train, y_train_pred))
       
    final_model = grid.best_estimator_
    final_test_prediction = final_model.score(x_test, y_test)
    print("Test score: {:.2f}%".format(final_test_prediction * 100))    
    print("--------------------------")

method_names = []
method_scores = []
method_names.append("SVM")
method_names.append("Naive Bayes")
method_names.append("Karar Ağacı")
method_names.append("Rastgele Orman")

method_scores.append(0.89)
method_scores.append(0.86)
method_scores.append(0.86)
method_scores.append(0.87)

plt.ylim([0.8,0.92])
plt.bar(method_names,method_scores,width=0.5)
plt.title("CountVectorizer")
plt.xlabel('Method Name')
plt.ylabel('Method Score')
for models, parameters, name in zip([LinearSVC_tfidf, NB_tfidf,Decision_tfidf, RandomForest_tfidf],
                                    [parameters_of_svc_tfidf, parameters_of_general_tfidf, parameters_of_general_tfidf, parameters_of_general_tfidf],
                                    ["LinearSVC","Naive Bayes","Decision Tree","Random Forest"]):

    grid = GridSearchCV(models, parameters, cv=5)
    grid.fit(x_train, y_train)
    print("Model ismi: "+ name)
    print("En iyi cross-validation score: {:.2f}".format(grid.best_score_ * 100))
    print("En iyi parametreler: ", grid.best_params_)
    
    y_train_pred = grid.predict(x_train)
    print(confusion_matrix(y_train, y_train_pred))
    fpr_naive, tpr_naive, threshold_naive =roc_curve(y_train, y_train_pred)
    roc_auc_naive=auc(fpr_naive,tpr_naive)
    plt.title('Receiver Operating Characteristic')
    plt.plot(fpr_naive,tpr_naive,label='AUC= %0.2f' % roc_auc_naive)
    plt.legend(loc=4)
    plt.show()

    final_model = grid.best_estimator_
    final_test_prediction = final_model.score(x_test, y_test)
    print("Test score: {:.2f}%".format(final_test_prediction * 100))    
    print("--------------------------")
method_names = []
method_scores = []
method_names.append("SVM")
method_names.append("Naive Bayes")
method_names.append("Karar Ağacı")
method_names.append("Rastgele Orman")

method_scores.append(0.9)
method_scores.append(0.87)
method_scores.append(0.85)
method_scores.append(0.87)

plt.ylim([0.8,0.92])
plt.bar(method_names,method_scores,width=0.5)
plt.title("TF-IDF Vectorizer")
plt.xlabel('Method Name')
plt.ylabel('Method Score')
best_pipeline = Pipeline([
    ('tfidfvectorizer', TfidfVectorizer(min_df=1,stop_words=stop,ngram_range=(1,2))),
    ('LinearSVC', LinearSVC(C=10,max_iter=1000))
])
best_pipeline.fit(x_train,y_train)
final_test_prediction = best_pipeline.score(x_test,y_test)
print("Final test score:",final_test_prediction)

y_test_pred = best_pipeline.predict(x_test)
print("Confusion matrix\n",confusion_matrix(y_test,y_test_pred))
from sklearn.metrics import *
print(classification_report(y_test,y_test_pred))
#Örnekleme
best_pipeline.predict(['gayet iyi','salak','bu ne kötü bi şey böyle','güzelsin','aptal','hava çok güzel'])