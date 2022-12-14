class RucksackSorter
  def compartments(list)
    [list[0,list.size/2],list[list.size/2,list.size]]
  end
  def common_items(first, second)
    first.split("").intersection(second.split("")).pop
  end
  def priority(letter)
    code = (letter.ord)-38 if letter.ord <= 90
    code = (letter.ord)-96 if letter.ord >= 97
    code
  end
end
