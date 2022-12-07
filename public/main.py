import uvicorn
from starlette.responses import FileResponse
from fastapi import APIRouter, Request
from fastapi.staticfiles import StaticFiles
import tensorflow as tf
import numpy as np

router = APIRouter()

router.mount("/css", StaticFiles(directory="css"), name="css")
router.mount("/js", StaticFiles(directory="js"), name="js")
router.mount("/img", StaticFiles(directory="img"), name="img")
router.mount("/pages", StaticFiles(directory="pages"), name="pages")
router.mount("/fonts", StaticFiles(directory="fonts"), name="fonts")
router.mount("/_html", StaticFiles(directory="_html"), name="_html")
router.mount("/jsAI", StaticFiles(directory="jsAI"), name="jsAI")


@router.get("/")
async def read_index():
    return FileResponse('index.html')


@router.get("/uploadfile")
async def create_upload_file(request: Request):
    form_data = await request.form()
    form_data = form_data.get('file')

    audio = tf.io.decode_base64(form_data)

    # Predict
    # label_names = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    label_names = ['down', 'go', 'left', 'no', 'right', 'stop', 'up', 'yes']
    imported = tf.saved_model.load("../NoteBooks/saved")
    prediction = imported(audio)
    result = np.argmax(prediction[0])
    print(label_names[result])

    return label_names[result]  # label_names[result]


@router.get("/index.html")
async def read_index():
    return FileResponse('index.html')


@router.post("/index.html")
async def read_index():
    return FileResponse('index.html')


@router.get("/style.css")
async def read_index():
    return FileResponse('style.css')


if __name__ == "__main__":
    uvicorn.run(router, host="localhost", port=8000)
