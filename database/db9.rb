require 'active_record'

# estabelecendo a conexão 
ActiveRecord::Base.establish_connection({
  adapter:  'sqlite3',
  database: 'alunos.sqlite3'
})

class Aluno < ActiveRecord::Base
end 

for aluno in Aluno.all
  puts "id: #{aluno.id} nome: #{aluno.nome}"
end 

aluno = Aluno.find(3)
puts "Encontrei #{aluno.nome}"
aluno.nome = "Nicolas Braz"
aluno.save

aluno = Aluno.find_by(id: 3)
puts "O #{aluno.id} agora tem o nome: #{aluno.nome}"