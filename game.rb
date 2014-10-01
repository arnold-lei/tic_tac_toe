require 'pry' 

# 1 | 2 | 3 
# - + - + -
# 4 | 5 | 6 
# - + - + -
# 7 | 8 | 9 

choice = "X"
ai = "O"

def space
	s = {}
	(1..9).each{|space| s[space] = " "}
	s
end

def win(s) 
	taken = s.select {|k,v| v == "x" || v == "O" }
	player = taken.select { |k,v| v == "x"}.keys
	cpu = taken.select { |k,v| v == "O"}.keys
	win = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
	if win.include?(player)
		return 'Player'
	elsif win.include?(cpu)
		return 'Computer'
	end
end

#Game Board
def grid(s)
	system 'clear'
	puts " #{s[1]} | #{s[2]} | #{s[3]} " 
	puts " - + - + - "
	puts " #{s[4]} | #{s[5]} | #{s[6]} " 
	puts " - + - + - "
	puts " #{s[7]} | #{s[8]} | #{s[9]} " 
end

#Select epmty space
def empty_space(s)
	s.select {|k, v| v == " "}.keys
end

#Users chooses position for where they play their move
def player_move(choice, s)
	loop do 
		until empty_space(s).to_s.include?choice 
		puts "Choose a number"
		choice = gets.chomp
		end
		puts "This is a free space"
		s[choice.to_i] = "x"
		break
	end
end

#Computer will pick a random spot on the board that the user has not picked yet
def ai_move(ai, s)
	ai = empty_space(s).sample
	s[ai] = "O"
end



s = space
grid(s)
begin
	player_move(choice, s)
	ai_move(choice, s)
	grid(s)
	winner = win(s)
end until empty_space(s).empty? || winner

if winner
  puts "#{winner} won!"
else
  puts "It's a tie"
end



