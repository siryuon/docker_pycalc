FROM ubuntu:14.04
MAINTAINER CMG "siryuon@khu.ac.kr"
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN apt-add-repository universe
RUN apt-get update
RUN apt-get install python-pip -y
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
