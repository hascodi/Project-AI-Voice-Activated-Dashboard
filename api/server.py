from flask import Flask, render_template, request

app = Flask(__name__)
UPLOAD_FOLDER = b"C:/Users/safib/Documents/Jaar 3 semester 1/Ai Project/test/"
app.config["UPLOAD_FOLDER"] = UPLOAD_FOLDER

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/result', methods = ['GET', 'POST'])
def upload_file():
   if request.method == 'POST':
      f = request.files['file']
      return 'file uploaded successfully'



if __name__=='__main__':
    app.debug=True
    app.run('127.0.0.1', port=5001)