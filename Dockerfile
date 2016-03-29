FROM ruby:2.2.3

MAINTAINER rudarberry

ENV PHANTOMJS_VERSION 2.1.1

RUN apt-get update && apt-get install build-essential apt-utils dialog libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev -y && \
    curl -L -s -o /usr/local/share/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    tar -xjf /usr/local/share/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /usr/local/share && \
    ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs && \
    ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
    ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
