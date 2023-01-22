import uvicorn
from fastapi import Request, FastAPI
import tensorflow as tf
import numpy as np
from starlette.middleware.cors import CORSMiddleware

app = FastAPI()

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.post("/word")
async def word(request: Request):
    form_data = await request.form()
    form_data = form_data.get('file')
    contents = await form_data.read()

    x, _ = tf.audio.decode_wav(contents, desired_channels=1, desired_samples=16000, )
    label_names = ['down', 'go', 'left', 'no', 'right', 'stop', 'up', 'yes']
    imported = tf.saved_model.load("NoteBooks/saved-Words")

    x = tf.squeeze(x, axis=-1)
    x = x[tf.newaxis, :]

    # Predict
    prediction = imported(x)
    result = np.argmax(prediction[0])
    print(label_names[result])

    return label_names[result]  # label_names[result]


@app.post("/digit")
async def digit(request: Request):
    form_data = await request.form()
    form_data = form_data.get('file')
    contents = await form_data.read()

    x, _ = tf.audio.decode_wav(contents, desired_channels=1, desired_samples=48000, )
    label_names = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    imported = tf.saved_model.load("NoteBooks/saved-Digit-V2")

    x = tf.squeeze(x, axis=-1)
    x = x[tf.newaxis, :]

    # Predict
    prediction = imported(x)
    result = np.argmax(prediction[0])
    print(label_names[result])

    return label_names[result]  # label_names[result]


if __name__ == "__main__":
    uvicorn.run(app, host="localhost", port=8000)
