require 'pp'
require 'rest-client'

token = File.read('/var/run/secrets/kubernetes.io/serviceaccount/token')
puts 'API Token: '
p token

loop do
  response = RestClient::Request.execute(
    method: :get,
    url: 'https://kubernetes.default:443/api',
    ssl_ca_file: '/var/run/secrets/kubernetes.io/serviceaccount/ca.crt',
    headers: {
      :Authorization => "Bearer #{token}",
      :Connection => "keep-alive"
    }
  ) 
  puts 'Time:'; p Time.now
  puts 'Request headers:'; p response.request.headers
  puts 'Response code:'; p response.code
  puts 'Response headers:'; pp response.headers
  puts 'Response length:'; p response.body.length
  puts 'Response:'; p response.body
  puts
  sleep(1)
end
