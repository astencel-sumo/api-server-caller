FROM ruby:2.7
RUN apt-get update \
    && apt-get install \
        gcc \
        g++
RUN gem install excon
WORKDIR /app
COPY ./excon-script.rb ./
CMD ruby ./excon-script.rb
