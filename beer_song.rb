beer = 99
while beer > 0
  puts beer.to_s + " bottles of beer on the wall!" + beer.to_s + " bottles of beer!"
  puts "Take one down, pass it around!" + beer.to_s + " bottles of beer on the wall!"
  beer -=1
end
puts "That was fun... :) please order me a new liver."