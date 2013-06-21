class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    @happiness = 10
    
    puts "#{@name} is born!"
  end
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end
  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling up the room with smoke!"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  def toss
    puts "You toss #{@name} up into the air!"
    puts "He giggles, which singes your eyebrows!"
    @happiness = 10
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop!"
    end
  end
  
  private
  def hungry?
    @stuff_in_belly <= 2
  end
  def poopy?
    @stuff_in_intestine >= 8
  end
  def sad?
    @happiness <= 2
  end
  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate you!"
      exit
    end
    if @happiness > 0
      @happiness -=1
    else
      puts "#{@name} is depressed and begins to cry!"
      puts "The resulting inferno consumes you."
      exit
    end
    
    if @stuff_in_intestine >=10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident... which is eating through the floor."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@names}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
    if sad?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowely and seemes mopey..."
      end
      puts "#{@name} appears listless..."
    end
  end
end

puts "Welcome to Dragon! Please enter the name of your new baby dragon!"
name = gets.chomp
pet = Dragon.new "#{name}"
while true
  puts "What would you like to do with #{name}?"
  input = gets.chomp
  case input
  when "feed"
    pet.feed
  when "walk"
    pet.walk
  when "put_to_bed"
    pet.put_to_bed
  when "toss"
    pet.toss
  when "rock"
    pet.rock
  else 
    puts "You can't do that!"
  end
end
