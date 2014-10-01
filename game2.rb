require 'pry' 

# 1 | 2 | 3 
# - + - + -
# 4 | 5 | 6 
# - + - + -
# 7 | 8 | 9 

def space
	s = {}
	(1..9).each{|space| s{space} = ""}
end

#Game Board
def grid(s)
	system 'clear'
	puts " #{s[1]} | #{s[2]} | #{s[3]} " 
	puts " - + - + - "
	puts " #{s[4]} | #{s[5]} | #{s[6]} " 
	puts " - + - + - "
	puts " #{s[7]} | #{s[8]} | #{s[9]} " 
	puts s
end

#Empty Spaces
def empty_space(s)
	empty = s.select {|k, v| v == " "}.keys
end

#Player's Choice
def player_move(space, s)
	loop do 
		until empty_space(s).to_s.include?space 
		puts "Choose a number"
		space = gets.chomp
		end
		puts "This is a free space"
		s[space.to_i] = "x"
		break
	end
end

#Computers' Move
def cpu_move
	space = empty(s).sample
	s[space] = "O"
end


s = space 

loop do
	gird(s)
	player_move(space,s)
	cpu_move
end
