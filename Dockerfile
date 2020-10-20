FROM ruby:2.7
RUN apt-get update \
    && apt-get install \
        gcc \
        g++

WORKDIR /app
COPY ./single-file.rb ./
CMD ruby ./single-file.rb
