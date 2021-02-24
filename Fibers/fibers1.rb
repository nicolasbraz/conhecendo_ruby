enum1 = 5.times
enum2 = %w(zero um dois três quatro).each 

puts enum1.class 

loop do 
  puts enum1.next.to_s << "=#{enum2.next}"
end 
