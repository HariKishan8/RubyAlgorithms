#!/usr/bin/ruby

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	 raise WrongNumberOfPlayersError unless game.length == 2
	 #checking if it is a valid strategy
	 raise NoSuchStrategyError if /[Ss]|[Pp]|[Rr]/.match(game[0][1]) == nil || /[Ss]|[Pp]|[Rr]/.match(game[1][1]) == nil 

	 # creating a hash with key as the strategy and value as its priority over other strategy but for P > R we need to check separately
	 h = Hash["R" => 3,"S" => 2, "P" => 1]

	 # checking the case of P>R
	 if /[Pp]/.match(game[0][1]) && /[Rr]/.match(game[1][1])
	 	return game[0]
	 end
	 if /[Rr]/.match(game[0][1]) && /[Pp]/.match(game[1][1])
	 	return game[1]
	 end
	 #getting the winner in all other cases from the hash map
	 if h[(game[0][1]).upcase] >= h[(game[1][1]).upcase]
	   	return game[0]
	 else 
	   	return game[1]
	 end
end

game = [ [ "Kristen", "r" ], [ "Pam", "p" ] ]
print "Kristen played r and Pam played p and the winner is: "
puts rps_game_winner(game)


