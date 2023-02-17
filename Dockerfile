FROM python:3
WORKDIR /app
COPY yiqu.py .
CMD [ "python", "yiqu.py" ]