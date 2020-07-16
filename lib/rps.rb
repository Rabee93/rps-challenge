class Game
  attr_reader :choice , :com

  def initialize(choice)
    @com = ["scissors","paper" , "rock"].sample
    @choice = choice
  end

  def play
if choice == "scissors" && com == "paper" ||
  choice == "paper" && com == "rock" ||
  choice == "rock" && com == "scissors"
  return "you win"
elsif choice == "rock" && com == "paper" ||
  choice == "paper" && com == "scissors" ||
  choice == "scissors" && com == "rock"
  return "Computer wins"
elsif choice == "scissors" && com == "scissors" ||
  choice == "paper" && com == "paper" ||
  choice == "rock" && com == "rock"
  return "It's a draw"
end
end
end
