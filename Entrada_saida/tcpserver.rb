require 'socket'

socket = TCPServer.new('localhost', 8081)
client = socket.accept

puts "new client! #{client}"

client.write("Hello from server")
client.close

