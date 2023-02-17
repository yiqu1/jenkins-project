FROM python:3.8-slim-buster

WORKDIR /app

COPY yiqu.py .

CMD ["python", "yiqu.py"]
