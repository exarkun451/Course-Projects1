def ask question
  while true
  	puts question
  	reply = gets.chomp.downcase
  	
  	if (reply == 'yes' || reply == 'no')
  	  if reply == 'yes'
  	    return true
  	  else
  	    return false
  	  end
  	  break
  	 else
  	   puts 'Please answer "yes" or "no".'
  	 end
  	 end
end

puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about Mexican food'
puts 'and try to answer each question honestly,'
puts 'with either a "yes" or a "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts
ask 'do you like eating tacos?'
ask 'do you like eating chimichangas?'
ask 'do you like eating burritos?'
wets_bed = ask 'do you wet the bed?'
ask 'do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating floutas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help'
puts 'with this experiment. In fact, this experiment'
puts 'has nothing to do with Mexican food. It is'
puts 'an experiment about bed-wetting. The Mexican'
puts 'food was just there to catch you off guard in'
puts 'the hopes that you would answer more honestly.'
puts 'Thanks again!'
puts
puts "Wets the bed:"
puts wets_bed