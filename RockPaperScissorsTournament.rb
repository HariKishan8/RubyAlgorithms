#!/usr/bin/ruby

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

#using the game winner function from the 3rd question
def rps_game_winner(game)
	 raise WrongNumberOfPlayersError unless game.length == 2
	 raise NoSuchStrategyError if /[Ss]|[Pp]|[Rr]/.match(game[0][1]) == nil || /[Ss]|[Pp]|[Rr]/.match(game[1][1]) == nil
	 h = Hash["R" => 3,"S" => 2, "P" => 1]
	 if /[Pp]/.match(game[0][1]) && /[Rr]/.match(game[1][1])
	 	return game[0]
	 end
	 if /[Rr]/.match(game[0][1]) && /[Pp]/.match(game[1][1])
	 	return game[1]
	 end
	 if h[(game[0][1]).upcase] >= h[(game[1][1]).upcase]
	   	return game[0]
	 else 
	   	return game[1]
	 end
end

def rps_tournament_winner(tournament)
	if tournament[0][0].class == String
		return rps_game_winner(tournament)
	end
	#using recursion to findout the tournament winner using the assumption that initial array is well formed (that is, there are 2^N 	  players
	rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
end

tournament = 
[
[
  [ ["Kristen", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"], ["Michael", "S"] ],
],
[
  [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ]
]
]

puts rps_tournament_winner(tournament)

=begin
tournament = [
[
	[
	  [ ["Kristen", "P"], ["Dave", "S"] ],
	  [ ["Richard", "R"], ["Michael", "S"] ],
	],
	[
	  [ ["Hari", "R"], ["Ravi", "P"] ],
	  [ ["Shiva", "R"], ["Dheeraj", "S"] ]
	]
],
[
  [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ]
],
]
=end





