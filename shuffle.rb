some_array = []


puts "Please type some words to sort!"
while true
  response = gets.chomp.to_s
  if response == ""
    break
  else
    some_array << response
  end
end


def shuffle some_array
  shuffled_array = []
  while some_array.length > 0
    total_indices = some_array.length + 1
    shuffled_array.push(some_array(rand(total_indices)))
  end
end

puts some_array.shuffle!
  
while true
  puts "Would you like to shuffle it again?"
  response = gets.chomp.downcase
    if response == "yes"
      puts some_array.shuffle!
    elsif response == "no"
      break
    else
    puts 'Please answer "Yes or no"'
  end
end 
    