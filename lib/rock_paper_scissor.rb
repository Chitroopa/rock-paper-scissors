class String
  define_method(:beats?) do |player_two|
    if self == "rock" && player_two == "scissors"
      true
    elsif self == "scissors" && player_two == "paper"
      true
    elsif self == "paper" && player_two == "rock"
      true
    else
      false
    end
  end
  define_method(:rock_paper_scissor) do |player_two|
    if self != player_two
      result = (self).beats?(player_two)
      winner = ""
      if result
        winner = "Player1 wins"
      else
        winner = "Player2 wins"
      end
    else
      winner = "Draw"
    end
  winner
  end
end
