# Используем за основу контейнера Ubuntu 16.04 LTS
 FROM ubuntu:16.04
 # Переключаем Ubuntu в неинтерактивный режим — чтобы избежать лишних запросов
 ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python-software-properties
RUN apt-get install -y debconf-utils
RUN apt-get install -y software-properties-common

#ставим джаву
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN apt-get install -y oracle-java8-installer

RUN java -version
RUN java -version


CMD ["/bin/bash"]
