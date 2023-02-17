FROM python:3.0

WORKDIR /app

COPY yiqu.py .

CMD ["python", "yiqu.py"]
