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
def result():
    blobData = request.files['data']
    filename = secure_filename(blobData.filename)
    filepath = os.path.join(app.config["UPLOAD_FOLDER"], filename)
    blobData.save(filepath)
    
    app.logger.info('blob data : ', blobData)
    data, samplerate = soundfile.read(blobData)

    soundfile.write('new.wav', data, samplerate, subtype='PCM_16')

    with open("new.wav", 'rb') as fp:
        audio = fp.read()

    res = requests.post(url, headers=headers, data=audio)
    
    return res.text

if __name__=='__main__':
    app.debug=True
    app.run('127.0.0.1', port=5001)