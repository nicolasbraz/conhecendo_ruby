File.open("Files/teste.txt") do |arquivo| 
  arquivo.each_char do |char| 
    print "[#{char}]"
  end
end
