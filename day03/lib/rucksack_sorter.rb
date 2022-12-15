class RucksackSorter
  def compartments(list)
    [list[0,list.size/2],list[list.size/2,list.size]]
  end
  def common_items(first, second)
    first.split("").intersection(second.split("")).pop
  end
  def common_badge(lists)
    lists.split("\n").collect{ |n| n.chars }.inject{ |a, b| a.intersection(b)}.pop
  end
  def priority(letter)
    code = (letter.ord)-38 if letter.ord <= 90
    code = (letter.ord)-96 if letter.ord >= 97
    code
  end
  def total_priority(rucksack_items)
    rucksack_items.split("\n").collect{ |n| compartments(n) }.collect{ |a,b| priority( common_items(a,b) ) }.sum
  end
end
if __FILE__ == $0
  rucksack_items = File.read("input.txt")
  scanner = RucksackSorter.new
  total_priority = scanner.total_priority(rucksack_items)
  p total_priority
end
