File.open("Files/novo_teste.txt", "w") do |arquivo|
  arquivo << File.read("Files/teste.txt")
end 