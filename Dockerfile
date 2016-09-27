FROM ubuntu:14.04
MAINTAINER Loganathane V

RUN apt-get update && apt-get install -y \
    ruby-dev \
    make

RUN gem install listen
RUN gem install compass
RUN gem install compass-core
RUN gem install css_parser
RUN gem install bootstrap-sass

VOLUME /src

WORKDIR /src

ENTRYPOINT [ "compass" ]
