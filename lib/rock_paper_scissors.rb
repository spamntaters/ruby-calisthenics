class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1_strat = player1[1]
    p2_strat = player2[1]
    strats  = {"R" => "S", "P" => "R", "S" => "P"}
    valid_strat = (strats.keys.include? p1_strat) && (strats.keys.include? p2_strat)
    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") unless valid_strat 
    return player1 if p1_strat == p2_strat
    return player1 if strats[p1_strat] == p2_strat
    player2
  end

  def self.tournament_winner(tournament)
    unless tournament[0][0].is_a? String
      return tournament_winner([tournament_winner(tournament[0]), tournament_winner(tournament[1])]) 
    else
      return winner(tournament[0], tournament[1])
    end
  end

end