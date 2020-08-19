# spam sms detector :notebook: &nbsp;[![](https://camo.githubusercontent.com/17fa56d1fbad7bb4082c9711a77b984b85e79446/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f507974686f6e2d332e362d627269676874677265656e2e737667)](https://python.org)
In this repo i have created a SMS Spam Prediction project in machine learning using NLP, and i am using [nltk](https://pypi.org/project/nltk/) Library for NLP. Deployment on Heroku app.

 - [[Jupyter Notebook]](https://github.com/yogeshnile/SPAM-SMS-Prediction)
 - [[Demo]](https://spam-sms-dectector.herokuapp.com/)

[![](https://camo.githubusercontent.com/2fb0723ef80f8d87a51218680e209c66f213edf8/68747470733a2f2f666f7274686562616467652e636f6d2f696d616765732f6261646765732f6d6164652d776974682d707974686f6e2e737667)](https://python.org)

# Motivation :monocle_face:
  - Day by day people get a lot of sms, In those sms include are spam and helpful message. In today's runaway life we don't have enough time to recognize these sms whether it is spam or not, so i have develop a machine learning programme using kaggle dataset which will split the sms. Hope this programme are helpful for you. 

# How to run the project? :thinking:
**1).** Run all command manually
  - Clone github repository in your local system  `git clone https://github.com/yogeshnile/spam-sms-detector.git`
  - Move in spam-sms-detector repository  `cd spam-sms-detector`
  - Create new virtual python environment  `python3 -m venv venv`
  - Activate virtual python environment  `source venv/bin/activate`
  - Install all the libraries mentioned in [requirements.txt](https://github.com/yogeshnile/spam-sms-detector/blob/master/requirements.txt)  using  `pip install -r requirements.txt`
  - Run FlaskApp file  `python app.py`
  - Go to your browser and type http://127.0.0.1:5000/ in the address bar.
  - Hurray! That's it. <br>


**2).** Run Shell Script
  - Clone github repository in your local system  `git clone https://github.com/yogeshnile/unix.git`
  - Give execute permission to [spam-sms-detector.sh](https://github.com/yogeshnile/unix/blob/master/spam-sms-detector.sh) file via  `chmod +x spam-sms-detector.sh`
  - Run spam-sms-detector.sh file using `./spam-sms-detector.sh`
  - Go to your browser and type http://127.0.0.1:5000/ in the address bar.
  - Finished...

# Directory Tree :cactus:
```bash
.
├── app.py
├── corpus.pkl
├── Images
│   ├── 1.png
│   ├── 2.png
│   └── 3.png
├── LICENSE
├── model_creation.py
├── nltk.txt
├── Procfile
├── README.md
├── requirements.txt
├── Spam SMS Collection
├── Spam_sms_prediction.pkl
├── static
│   ├── css
│   │   └── main.css
│   ├── icon
│   │   └── icon.ico
│   ├── js
│   │   └── global.js
│   └── vendor
│       └── jquery
│           ├── jquery.js
│           └── jquery.min.js
└── templates
    └── index.html

8 directories, 19 files
```

# Technology used in Project :hotsprings:
<img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/Heroku.png" width="200">  <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/Jupyter.png" width="150">    <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/numpy.png" width="200">       <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/python_nltk.png" width="150">    <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/sklearn.png" width="200">    <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/Flask.png" width="300">    <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/pandas.png" width="300">

## ScreenShot :camera_flash:
![](https://github.com/yogeshnile/spam-sms-detector/blob/master/Images/1.png)    ![](https://github.com/yogeshnile/spam-sms-detector/blob/master/Images/2.png)    ![](https://github.com/yogeshnile/spam-sms-detector/blob/master/Images/3.png)

## Bug / Feature Request :man_technologist:
If you find a bug (the website couldn't handle the query and / or gave undesired results), kindly open an issue [here](https://github.com/yogeshnile/spam-sms-detector/issues/new) by including your search query and the expected result.

If you'd like to request a new function, feel free to do so by opening an issue [here](https://github.com/yogeshnile/spam-sms-detector/issues/new). Please include sample queries and their corresponding results.


## Connect with me! 🌐
Known on internet as **Yogesh Nile**

[![][I_LinkedIn]][LinkedIn]  [![][I_Github]][Github] [![][I_Twitter]][Twitter] [![][I_Telegram]][Telegram] [![][I_Instagram]][Instagram]  [![][I_Instagram Personal]][Instagram Personal]   [![][I_discord]][discord]

## Email Me :e-mail:

[![][I_Email]][E-mail]


[LinkedIn]: https://bit.ly/2Ky3ho6
[Github]: https://bit.ly/2yoggit
[Twitter]: https://bit.ly/3dbLJLC
[Telegram]: https://t.me/yogeshnile
[Instagram]: https://bit.ly/3b9Qeo4
[Instagram Personal]: https://bit.ly/32SXHV0
[E-mail]: mailto:yogeshnile.work4u@gmail.com
[discord]: https://discord.gg/R2ug3gR

[I_discord]: https://img.icons8.com/bubbles/100/000000/discord-logo.png
[I_LinkedIn]: https://img.icons8.com/bubbles/100/000000/linkedin.png
[I_Github]: https://img.icons8.com/bubbles/100/000000/github.png
[I_Twitter]: https://img.icons8.com/bubbles/100/000000/twitter.png
[I_Telegram]: https://img.icons8.com/bubbles/100/000000/telegram-app.png
[I_Instagram]: https://img.icons8.com/bubbles/100/000000/instagram-new.png
[I_Instagram Personal]: https://img.icons8.com/bubbles/100/000000/instagram.png
[I_Email]: https://img.icons8.com/bubbles/100/000000/secured-letter.png
