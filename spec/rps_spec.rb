require'rps'

describe'Game' do
  it'has a player name' do
    game = Game.new('rabee')
    expect(game.choice).to eq('rabee')
  end
  describe'#play' do
    it'returns you win'do
    game = Game.new('rock')
    allow(game).to receive(:com) {"scissors"}
    expect(game.play).to eq("you win")
  end
  it'returns computer wins'do
  game = Game.new('paper')
  allow(game).to receive(:com) {"scissors"}
  expect(game.play).to eq("Computer wins")
end
it'returns its a draw'do
game = Game.new('paper')
allow(game).to receive(:com) {"paper"}
expect(game.play).to eq("It's a draw")
end
end
end
