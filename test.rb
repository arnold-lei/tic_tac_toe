require 'pry' 

# 1 | 2 | 3 
# - + - + -
# 4 | 5 | 6 
# - + - + -
# 7 | 8 | 9 

s = {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
choice = " "

#Game Board
def grid(s)
	system 'clear'
	puts " #{s[1]} | #{s[2]} | #{s[3]} " 
	puts " - + - + - "
	puts " #{s[4]} | #{s[5]} | #{s[6]} " 
	puts " - + - + - "
	puts " #{s[7]} | #{s[8]} | #{s[9]} " 
end

#Users chooses position for where they play their move
def player_move(choice, s)
	puts "Choose a number"
	choice = gets.chomp.to_i
	s[choice] = "x"
	puts s
end

loop do 
	grid(s)
	player_move(choice, s)
end