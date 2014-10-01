require 'pry' 
# 1 | 2 | 3 
# - + - + -
# 4 | 5 | 6 
# - + - + -
# 7 | 8 | 9 

choice = " "

def space
	s = {}
	(1..9).each {|space| s[space] = ' '}
	s
end

def grid(s)
	system 'clear'
	puts " #{s[1]} | #{s[2]} | #{s[3]} " 
	puts " - + - + - "
	puts " #{s[4]} | #{s[5]} | #{s[6]} " 
	puts " - + - + - "
	puts " #{s[7]} | #{s[8]} | #{s[9]} " 
end

def player_choice(choice, s)
	puts "Please choose your next move (1-9)"
	choice = gets.chomp
	s[choice] = 'x'
end

loop do 
	grid(space)
	player_choice(choice, s)
end




