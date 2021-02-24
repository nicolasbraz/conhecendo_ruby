require 'sequel'
require 'sqlite3'

Sequel.sqlite(database: "alunos.sqlite3") do |con| 
  puts con[:alunos].where(id: 2).update(nome: "José")
end