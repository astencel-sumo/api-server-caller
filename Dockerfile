FROM ruby:2.7
RUN apt-get update \
    && apt-get install \
        gcc \
        g++
RUN gem install rest-client
WORKDIR /app
COPY ./script.rb ./
CMD ruby ./script.rb
