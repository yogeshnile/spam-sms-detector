#Import Dependentias
from flask import Flask, render_template, request, redirect
import pickle
import numpy as np
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
nltk.download('stopwords')
import re
from sklearn.feature_extraction.text import CountVectorizer

#Import Pickle file
file_name = "Spam_sms_prediction.pkl"
classifier = pickle.load(open(file_name, 'rb'))

file_name = "corpus.pkl"
corpus = pickle.load(open(file_name, 'rb'))

#Creating the Bag of Words model
cv = CountVectorizer(max_features=2500)
X = cv.fit_transform(corpus).toarray()

def predict_spam(sample_message):
    sample_message = re.sub(pattern='[^a-zA-Z]',repl=' ', string = sample_message)
    sample_message = sample_message.lower()
    sample_message_words = sample_message.split()
    sample_message_words = [word for word in sample_message_words if not word in set(stopwords.words('english'))]
    ps = PorterStemmer()
    final_message = [ps.stem(word) for word in sample_message_words]
    final_message = ' '.join(final_message)
    temp = cv.transform([final_message]).toarray()
    return classifier.predict(temp)

app = Flask(__name__)

@app.route('/')
def home():
	return render_template('index.html')

@app.route('/result', methods=['POST','GET'])
def predict():
    if request.method == 'POST':
        message = request.form['message']
        if not message == "":
            if predict_spam(message):
                return render_template('index.html', result = 0, message = message)
            else:
                return render_template('index.html', result = 1, message = message)
        else:
            return render_template('index.html')
    else:
        return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
