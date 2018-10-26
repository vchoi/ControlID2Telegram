FROM python:3.7-alpine

RUN pip install pytelegrambotapi

ADD index.py / 
ADD monitor.py / 

RUN python index.py

CMD [ "python", "./monitor.py" ]
