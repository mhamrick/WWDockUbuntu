#start with ubuntu
FROM ubuntu:14.04

#install packages (mysql-server and apache2)
# Install pre-requisites
ENV DEBIAN_FRONTEND noninteractive


ADD sources.list /etc/apt/sources.list
COPY ww_install /tmp/ww_install

RUN apt-get update
RUN apt-get install -yq libdatetime-perl
RUN apt-get install -yq curl git wget build-essential



WORKDIR /tmp
#RUN git clone https://github.com/aubreyja/ww_install.git
WORKDIR /tmp/ww_install
RUN bash bin/install_prerequisites.sh
CMD service mysql start
#RUN perl bin/ww_install.pl -np --no-interactive --mysql_root_pw badsec12 --webwork_db_pw badsec13

EXPOSE 80
