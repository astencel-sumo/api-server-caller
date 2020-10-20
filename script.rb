require 'rest-client'

loop do
  response = RestClient.get 'http://jedr.pl/'
  puts Time.now
  puts response.code
  puts response.body
  sleep(5)
end
