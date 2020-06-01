FROM Ubuntu

RUN apt-get update
RUN apt-get install python

RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run

#docker build Dockerfile -t lstas180877/my-custom-app
#docker push lstas180877/my-custom-app

