require 'socket'

PORT    = 8081
socket  = TCPServer.new('0.0.0.0', PORT)

def handle_connection(client)
  puts "New connection, client:#{client}"

  client.write("Hello from server")
  client.close
end

puts "Listening on #{PORT}. Press CTRL+C to cancel."

loop do 
  client = socket.accept 
  Thread.new { handle_connection(client) }
end 