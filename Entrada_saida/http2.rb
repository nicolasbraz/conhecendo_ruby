require 'open-uri'

resposta = open("http://www.maximosistemas.com.br")
puts resposta.read.scan(/<h1>.*<\/h1>/)