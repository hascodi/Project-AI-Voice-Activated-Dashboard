from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/WordsSpoken")
def read_root(mp3file):
    return {"Hello": "World"}