class SupplyStacks
  attr_reader :stacks
  def initialize(input)
    @input = input
    @stacks = parse_input(input)
  end
  def parse_input(input)
    lines = input.split("\n")
    num_stacks = lines[-1].each_with_index.select{|n,i| n != ' '}.collect{ |n| n[1]}
    stacks = num_stacks.collect{ |n| lines.collect{ |a| a[n] } }
    @stacks = stacks.collect do |n|
      n.select do |a|
           if a== " "
             false
           elsif a.match? /\d/
             false
           else
             true
           end
         end
      end
  end
end
