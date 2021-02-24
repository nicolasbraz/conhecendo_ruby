require 'xmlrpc/server'

server = XMLRPC::Server.new(8081)

server.add_handler("soma") do |n1, n2| 
  {"resultado" => n1 + n2 }
end 

server.add_handler("divide") do |n1, n2| 
  {"resultado" => n1 / n2, "resto" => n1 % n2 }
end

server.serve