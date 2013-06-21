class Die
  def initialize
    roll
  end
  
  def cheat
    puts "Naughty! Ok, what side do you want up?"
    input = gets.chomp.to_i
    if input >=0 && input <= 6
     @number_showing = input
     else
     puts "Nice try. I'z a computer! I'll roll it for you."
     end
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end
end

die = Die.new
die.cheat
puts die.showing