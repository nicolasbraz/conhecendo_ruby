require 'rubygems'
require 'zip'

folder = "Files/"
input_filenames = ['teste.txt', 'novo_teste.txt']

zipfile_name = "Files/archive.zip"

Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile| 
  input_filenames.each do |filename| 
    zipfile.add(filename, File.join(folder, filename))
  end
  zipfile.get_output_stream("myFile.txt") { |f| f.write "myFile contains just this" }
end 