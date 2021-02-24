str =<<FIM
texto para mostrar como podemos separar palavras do texto 
  para estatistica de quantas vezes as palavras se repetem no texto  
FIM

  scanner = Fiber.new do 
    str.scan(/\w\p{latin}+/) do |word|
      Fiber.yield word.downcase
    end
  puts "Acabou!"
end

words = Hash.new(0)

while word = scanner.resume 
  words[word] += 1
end

words.each do |word,count| 
  puts "#{word}:#{count}"
end 
