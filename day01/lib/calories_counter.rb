class CaloriesCounter
  def calculate(line)
    line.split("\n").collect{ |n| n.to_i }.sum
  end

  def most_calories( elves_list, num=1 )
    elves_list.split("\n\n").collect{ |n| calculate(n) }.max(num).sum
  end
end

if __FILE__ == $0
  elves_list = File.read("input.txt")
  counter = CaloriesCounter.new
  most_calories = counter.most_calories( elves_list, 3)
  p most_calories
end
