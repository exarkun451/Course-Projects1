puts "Welcome to Blackjack!"

def show(hand)
	total = 0
	puts "You have: "
	hand.each do |x|
		case x
		when 11
		 puts "Jack"
		 	x = 10
		when 12 
		 puts "Queen"
		 	x = 10
		when 13
		 puts "King"
		 	x = 10
		when 14
		 puts "Ace"
		 puts "Your total so far is #{total}"
		 puts "Would you like your Ace to equal 1 or 11?"
		 response = gets.chomp.to_i
		 	if response == 11
		 		x = 11
			 else
		 		x = 1
		 	end
		else
			puts x
		end
	total += x
	end
	@player_total = total
	puts "for a total of: #{total}"
end

def computer_hand (computer, deck)
	total = 0
	computer.each do 
		|x|
		case x
		when 11
		 	x = 10
		when 12 
		 	x = 10
		when 13
		 	x = 10
		when 14
			if total<10
				x = 11
			else
				x = 1
			end
		else
			  x
		end
	total += x
	end
	puts "Computer:" + total.to_s
	if total < 17
		computer << deck.pop
	end
	return total
end

def winner (player, computer)
	player_total = 0
	computer_total = 0
	win = "YOU WIN!!!"
	lose = "Unfortunately, the computer beat you!"
	tie = "Dang, a tie!"
	player.each {|x| player_total +=x}
	puts player_total
	computer_total = 0
	computer.each {|x| computer_total += x}
	puts "Your total was #{player_total}, and the computers was #{computer_total}"
	if player_total == 21 && computer_total == 21
		puts win
	elsif player_total == 21 && computer_total != 21
		puts win
	elsif player_total != 21 && computer_total == 21
	  puts lose
	elsif player_total > 21 && computer_total <= 21
		puts lose
	elsif player_total <= 21 && computer_total > 21
		puts win
	elsif player_total == computer_total
		puts tie
	elsif player_total > computer_total
		puts win
	elsif player_total < computer_total
		puts lose
	else
		puts "a strange situation..."
	end
	exit
end
# Actual Game

deck = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]*4
player = []
computer = []
@player_total
@computer_total
deck.shuffle!
2.times do 
	player << deck.pop
	computer << deck.pop
end

while true
	show player 
	puts "What is your next move? Press 1 for Deal, or 2 for Show"
	response = gets.chomp.to_i
	if response == 1
		player << deck.pop
		computer_hand(computer, deck)
	else
		winner(player, computer)
	end
end
