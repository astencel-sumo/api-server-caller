FROM ruby:2.7-alpine
WORKDIR /app
COPY ./single-file.rb ./
CMD ruby ./single-file.rb
