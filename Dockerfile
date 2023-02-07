FROM python:alpine3.17

WORKDIR /opt/robohash

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD [ "python", "./robohash/webfront.py" ]
