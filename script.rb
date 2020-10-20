require 'rest-client'

loop do
  response = RestClient.get 'https://time.gov/'
  puts Time.now
  puts response.code
  puts response.body
  sleep(5)
end
