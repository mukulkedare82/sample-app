FROM ubuntu:16.04

USER root

# Install system tools
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential libffi-dev && \
  apt-get install -y software-properties-common && \
	apt-get install -y supervisor net-tools && \
  apt-get install -y vim byobu curl git htop man unzip nano wget && \
  apt-get install -y python-pip libssl-dev libmysqlclient-dev python-mysqldb && \
  apt-get install -y iputils-ping && \
  apt-get install -y python-enum34 && \
  rm -rf /var/lib/apt/lists/*

ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh

COPY sample-app.tar.gz /opt/
WORKDIR /opt/
RUN ["tar", "-xzf", "/opt/sample-app.tar.gz"]
WORKDIR /opt/sample-app

RUN pip install --upgrade pip
RUN pip -V
RUN pip install -r /opt/sample-app/requirements.txt

EXPOSE 5000
CMD ["/etc/bootstrap.sh", "-d"]
    