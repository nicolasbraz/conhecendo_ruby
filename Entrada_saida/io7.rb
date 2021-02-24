require "zip"
require "fileutils"

myzip = "teste.zip"
input_filenames = ['teste.txt', 'novo_teste.txt']
File.delete(myzip) if File.exists?(myzip)

Zip::File.open(myzip, Zip::File::CREATE) do |zipfile| 
  #Dir.glob("[0-9]*.txt") do |file|
    
    #zipfile.add("txts/#{file}", file)
    input_filenames.each do |filename|
      puts "Zipando #{filename}"
      zipfile.add(filename, File.join(filename))
    end 
  #end
end

#Zip::File.open(myzip) do |zipfile|
#  zipfile.each do |file|
#    dir = File.dirname(file.name)
#    puts "Descompactando #{file.name} para #{dir}"
#    FileUtils.mkpath(dir) if !File.exists?(dir)
#    zipfile.extract(file.name, file.name) do |entry, file|
#      puts "Arquivo #{file} existe, apagando ..."
#      File.delete(file)
#    end
#  end
#end
