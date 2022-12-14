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
  context "Given a list of moves, return the total score" do
    it "returns 15" do
      game = Game.new
      total_score = game.total_score("A Y\nB X\nC Z")
      expect(total_score).to eq 15
    end
  end
  context "Given a set of instructions, fix the game" do
    it "Draw -> 4" do
      game = Game.new
      score = game.fix_game("A Y")
      expect(score).to eq 4
    end
    it "Lose -> 1" do
      game = Game.new
      score = game.fix_game("B X")
      expect(score).to eq 1
    end
    it "Win -> 7" do
      game = Game.new
      score = game.fix_game("C Z")
      expect(score).to eq 7
    end
  end
  context "Given a second list of moves, return the total score" do
    it "returns 12" do
      game = Game.new
      total_score = game.total_score_second("A Y\nB X\nC Z")
      expect(total_score).to eq 12
    end
  end
end
