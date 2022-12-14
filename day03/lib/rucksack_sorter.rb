class RucksackSorter
  def compartments(list)
    [list[0,list.size/2],list[list.size/2,list.size]]
  end
  def common_items(first, second)
    first.split("").intersection(second.split("")).pop
  end
end
