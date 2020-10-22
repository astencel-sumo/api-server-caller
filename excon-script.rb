require 'excon'
require 'pp'

token = File.read('/var/run/secrets/kubernetes.io/serviceaccount/token')
puts 'API Token: '
p token

Excon.defaults[:ssl_verify_peer] = false
connection = Excon.new('https://kubernetes.default:443/', :persistent => true)

loop do
  puts 'Time:'; p Time.now
  response = connection.get(
    :path => '/api',
    :headers => {
      "Authorization" => "Bearer #{token}"
    }
  ) 
  puts 'Response code:'; p response.data[:status]
  puts 'Response headers:'; pp response.headers
  puts 'Response length:'; p response.body.length
  puts 'Response:'; p response.body
  puts
  sleep(1)
end
