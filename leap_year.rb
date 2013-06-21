puts "Please enter a year!"
year1 = gets.chomp.to_i
puts "Please enter another year!"
year2 = gets.chomp.to_i
puts "The leap years between these years are: "
leap = year1

while leap <= year2
if leap%4 == 0
  if leap%100 != 0 || leap%400 == 0
    puts leap
  end
end

leap += 1
end
