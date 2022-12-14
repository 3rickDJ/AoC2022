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
  def total_score(move_list)
    move_list.split("\n").collect{ |n| score(n) }.sum
  end
  def fix_game(moves)
    me, you = moves.split
    score = 0
    case you
    when "X"
      case me
      when "A"
        you="C"
      when "B"
        you="A"
      when "C"
        you="B"
      end
    when "Y"
      score+=3
      case me
      when "A"
        you="A"
      when "B"
        you="B"
      when "C"
        you="C"
      end
    when "Z"
      score+=6
      case me
      when "A"
        you="B"
      when "B"
        you="C"
      when "C"
        you="A"
      end
    end
    score += 1 if you == "A"
    score += 2 if you == "B"
    score += 3 if you == "C"
    score
  end
  def total_score_second(move_list)
    move_list.split("\n").collect{ |n| fix_game(n) }.sum
  end
end

if __FILE__ == $0
  move_list = File.read("input.txt")
  game = Game.new
  score = game.total_score_second(move_list)
  p score
end
