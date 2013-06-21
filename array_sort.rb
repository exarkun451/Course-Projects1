words = []
input = nil
puts "Please enter in some words!"
while input != ""
  input = gets.chomp
  words.push(input)
end
puts words.sort!