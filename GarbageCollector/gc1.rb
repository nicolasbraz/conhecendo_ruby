class gc
end

t1 = gc.new 
t2 = gc.new 
t3 = gc.new 

count = ObjectSpace.each_object(gc) do |object| 
  puts object 
end 

puts "#{count} objectos encontrados"

t2 = nil 
GC.start 

count = ObjectSpace.each_object(gc) do |object|
  puts object 
end 

puts "#{count} objetos encontrados."
