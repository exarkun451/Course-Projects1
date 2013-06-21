puts "HIYA THERE SONNY! GIVE GRANNY A KISS!"
awkward = 0
while true
year = rand(21)+1930
  words = gets.chomp
  
  if words == "BYE"
      awkward +=1 
      if awkward == 3
        break
      end
    else awkward = 0
  end 
  
    if words != words.upcase
      puts "HUH?! SPEAK UP, SONNY!"      
    else 
      puts "NO, NOT SINCE " + year.to_s
    end
end