from starlette.responses import FileResponse
from fastapi import APIRouter, Request, status
from fastapi.staticfiles import StaticFiles
from fastapi.responses import RedirectResponse

router = APIRouter()

router.mount("/css", StaticFiles(directory="css"), name="css")
router.mount("/js", StaticFiles(directory="js"), name="js")
router.mount("/img", StaticFiles(directory="img"), name="img")
router.mount("/pages", StaticFiles(directory="pages"), name="pages")
router.mount("/fonts", StaticFiles(directory="fonts"), name="fonts")
router.mount("/_html", StaticFiles(directory="_html"), name="_html")
router.mount("/_js", StaticFiles(directory="_js"), name="_js")


@router.get("/")
async def read_index():
    return FileResponse('index.html')


@router.post("/uploadfile")
async def create_upload_file(request: Request):
    form_data = await request.form()
    form_data = form_data.get('file')
    contents = form_data.file.read()
    res = "index.html"
    return res

@router.get("/index.html")
async def read_index():
    return FileResponse('index.html')
@router.post("/index.html")
async def read_index():
    return FileResponse('index.html')


@router.get("/style.css")
async def read_index():
    return FileResponse('style.css')





