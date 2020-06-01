FROM ubuntu

RUN apt-get update
RUN apt-get install -y python
 
RUN apt install -y python3-pip
RUN pip3 install flask

COPY . .

ENTRYPOINT FLASK_APP=app.py flask run

#docker build Dockerfile -t lstas180877/my-custom-app
#docker push lstas180877/my-custom-app

