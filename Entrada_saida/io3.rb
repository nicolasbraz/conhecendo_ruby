f = File.open("Files/teste.txt")
f.each do |linha|
  puts linha 
end
f.close