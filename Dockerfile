FROM python:3.12.6-bookworm

WORKDIR /app

COPY requirements.txt ./
COPY main.py ./
COPY dotenv.sample ./.env

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["chainlit", "run", "-h", "--host=0.0.0.0", "--port=8080", "main.py"]