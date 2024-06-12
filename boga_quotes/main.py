from fastapi import FastAPI

app = FastAPI()


@app.get("/random")
def random_quote() -> dict:
    return {"quote": "Adam? This is madam."}
