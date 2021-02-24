File.open("Files/teste.txt") do |arquivo| 
  arquivo.each do |linha|
    puts linha 
  end
end
