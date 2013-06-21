puts "Please enter your year of birth!"
year = gets.chomp.to_i
puts "please enter your month of birth!"
month = gets.chomp.to_i
puts "please enter your day of birth!"
day = gets.chomp.to_i

current = Time.new
age = 1
while Time.local(year + age, month, day) <= current
  print "SPANK! "
  age +=1
end

puts "You are #{age-1} years old! HAPPY BIRTHDAY!"
