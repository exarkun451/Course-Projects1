array = [1,2,3,4,5,6,7,8,9,10]
puts "Iterates over Array and prints values!"
array.each {|x| print x.to_s + " "}
puts
puts "Iterates over Array and prints values greater than 5!"
array.each {|x| if x>5 
	print x.to_s + " "
	end}
puts
puts "Extracts all the odd numbers from the previous array"
puts "and stores it in a new array!"
array_new = array.select {|x| x.odd? && x>5}
puts "#{array_new}"
puts
puts "Appends 11, and prepends 0 of the array!"
array << 11
array.unshift(0)
puts "#{array}"
puts
puts "Gets rid of 11, appends 3!"
array.pop
array.push(3)
puts "#{array}"
puts
puts "Gets rid of the duplicates in the array!"
array = array.uniq
puts "#{array}"
puts
puts
puts "The main difference between Arays and Hashes is that"
puts "Hashes are comprised of key-value pairs!"
hashimoto = Hash.new
Otomihsah = Hash.new
#hashimoto = {1: "Hashes", 2: "Are", 3: "Awesome!"}
otomihsah = {1=>"Yes!", 2=>"Rockets", 3=>"Too!"}
puts '1: "Hashes", 2: "Are", 3: "Awesome!"'
puts otomihsah
puts
puts "Returns the value of  'b' in a new array!"
h = {'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4}
puts h['b']
puts "adds key-value pair e:5 to the Hash!"
h['e'] = 5
puts h
puts
puts "removes all key-value pairs less than 3.5!"
h = h.select {|key, value| value < 3.5}
puts h
puts
puts
puts "Hash values can be arrays! Likewise, Arrays can be hashes!"
puts "Hash of Arrays:"
Hashy = {'a'=> [4,5,1], 'b'=> [2,1,6], 'c'=> "crikey!"}
puts Hashy
puts "Array of Hashes:"
Array_of_Hash = [['a'=> "Crazy!"],['b'=> "I'm"],['c'=> "An"],['d'=> "Array!"]]
puts Array_of_Hash