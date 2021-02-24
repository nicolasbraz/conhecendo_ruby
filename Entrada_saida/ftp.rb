require 'net/ftp'

host = "ftp.mozilla.org"
user = 'anonymous'
pass = 'nicolas.braz@gmail.com'
file = 'README'

begin 
  Net::FTP.open(host) do |ftp|
    puts "Conexão FTP aberta."
    ftp.login(user, pass)

    puts "Requisitando arquivo..."
    ftp.chdir("pub")
    ftp.get(file)
    puts "Download efetuado"

    puts File.read(file)
  end 

rescue => exception 
  puts "Erro: #{exception}"
end
