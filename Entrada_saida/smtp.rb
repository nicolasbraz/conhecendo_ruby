require 'net/smtp'
require 'highline/import'

from = "nicolas.braz@gmail.com"
pass = "Digite sua senha:" 
to   = "nicolas.braz@gmail.com"

str =<<FIM
From #{from}
  Subject: Teste de SMTP no ruby 
  Apenas um teste de envio de email no ruby 
  Falou!  
FIM

smtp = Net::SMTP.new("smtp.gmail.com", 587)
smtp.enable_starttls

begin 
  smtp.start("localhost", from, pass, :plain) do |smtp|
    puts "Conexão aberta!"
    smtp.send_message(msg, from, to)
    puts "Mensagem enviada!"
  end 
rescue => exception 
  puts "Erro: #{exception}"
  puts exception.backtrace
end 
