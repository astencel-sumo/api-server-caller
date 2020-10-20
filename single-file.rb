require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rest-client', require: 'rest-client'
end

loop do
  response = RestClient.get 'http://jedr.pl/'
  puts Time.now
  puts response.code
  puts response.body
  sleep(5)
end
