class Game
  def score(moves)
    me, you = moves.split.collect do |n|
      n = "A" if n=="X"
      n = "B" if n=="Y"
      n = "C" if n=="Z"
      n
    end
    score = 0

    score += 1 if you == "A"
    score += 2 if you == "B"
    score += 3 if you == "C"

    score +=3 if me == you
    score +=6 if me=="C" && you == "A"
    score +=6 if me=="A" && you == "B"
    score +=6 if me=="B" && you == "C"
    score
  end
end

if __FILE__ == $0
  game = Game.new
  score = game.score("A Y")
  p score
end
