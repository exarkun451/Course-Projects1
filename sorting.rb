sorted_array = []
some_array = []
x=0

def sort(some_array)
  lowest = some_array(x)
  some_array.each do |word| 
  	if word < lowest
  	  sorted_array << word
  	  word = lowest
  	end
  x +=1	
  end			
end

puts "Please type some words to sort!"
while true
  response = gets.chomp.to_s
  if response == ""
    break
  else
    some_array << response
  end
end

puts some_array.sort