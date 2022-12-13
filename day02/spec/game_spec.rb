require 'game'

describe Game do
  context "Given a pair of moves, return the score" do
    it "return 8" do
      game = Game.new
      score = game.score("A Y")
      expect(score).to eq 8
    end
    it "return 1" do
      game = Game.new
      score = game.score("B X")
      expect(score).to eq 1
    end
    it "return 6" do
      game = Game.new
      score = game.score("C Z")
      expect(score).to eq 6
    end
  end
end
