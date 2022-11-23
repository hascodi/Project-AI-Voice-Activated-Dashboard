from starlette.responses import FileResponse
from fastapi import FastAPI, Response, Request, Body
from fastapi.staticfiles import StaticFiles
import multipart


app = FastAPI()


app.mount("/css", StaticFiles(directory="css"), name="css")
app.mount("/js", StaticFiles(directory="js"), name="js")
app.mount("/img", StaticFiles(directory="img"), name="img")
app.mount("/pages", StaticFiles(directory="pages"), name="pages")
app.mount("/fonts", StaticFiles(directory="fonts"), name="fonts")
app.mount("/_html", StaticFiles(directory="_html"), name="_html")
app.mount("/_js", StaticFiles(directory="_js"), name="_js")

@app.get("/")
async def read_index():
    return FileResponse('index.html')


@app.get("/index.html")
async def read_index():
    return FileResponse('index.html')


@app.get("/style.css")
async def read_index():
    return FileResponse('style.css')


@app.post("/uploadfile")
async def create_upload_file(request: Request):
    form_data = await request.form()
    form_data = form_data.get('file')
    contents = form_data.file.read()
    with open('blob.wav', 'wb') as file:
            file.write(contents)
    return form_data




