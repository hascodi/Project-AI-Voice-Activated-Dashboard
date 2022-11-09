from flask import Flask, render_template, request
import requests, json
import soundfile
from werkzeug.utils import secure_filename
import os

app = Flask(__name__)
UPLOAD_FOLDER = b"C:/Users/safib/Documents/Jaar 3 semester 1/Ai Project/test/"
app.config["UPLOAD_FOLDER"] = UPLOAD_FOLDER

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/result', methods=['POST'])
def api_post_audio_blob():        
    blob =  request.form['blob']
    print(blob)
    with open('file.wav', 'wb') as f:
        f.write(blob)
        f.close()
    return blob

if __name__=='__main__':
    app.debug=True
    app.run('127.0.0.1', port=5001)