FROM python:3
ADD yiqu.py /
RUN pip install pystrich
CMD [ "python", "./yiqu.py" ]