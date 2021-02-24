require 'net/https'
require 'highline/import'

user = "user"
pass = ask("Digite sua senha") { |q| q.echo = "*" }

begin 
  site = Net::HTTP.new("api.del.icio.us", 443)
  site.use_ssl = true 

  site.start do |http| 
    req = Net::HTTP::Get.new('/vi/tags/get')
    req.basic_auth(user, pass)
    response = http.request(req)
    print response.body 
  end
rescue => exception
  puts "erro: #{e}"
end 