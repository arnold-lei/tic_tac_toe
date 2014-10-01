s = {1=> "O", 2=>"O", 3=>"x", 4=>"O", 5=>"x", 6=>"", 7=>"x", 8=>"x", 9=>" "}
choice = "x"
ai = "O"

#Select epmty space
def empty_space(s)
	board = s.select {|k, v| v == " "}.keys
	if board == nil
		puts "board is full"
	end
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


def win_condition(s)
	taken = s.select {|k,v| v == "x" || v == "O" }
	player = taken.select { |k,v| v == "x"}.keys
	cpu = taken.select { |k,v| v == "O"}.keys
	win = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
	if win.include?(player)
		puts "You win!"
	elsif win.include?(cpu)
		puts "Computer wins!"
	else
	end
end

player_move(choice, s)
win_condition(s)
p empty_space(s)


