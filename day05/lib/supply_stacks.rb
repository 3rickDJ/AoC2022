class SupplyStacks
  attr_reader :stacks
  def initialize(input)
    @input = input
    @stacks = []
  end
  def parse_input
    # @input.scan(/\ \d\ \ /).size
    stacks = @input.split("\n").find_index{ |n| n.match? /\ \d\ \ / } - 1
    lines = @input.split("\n")[stacks]
    lines.each_line do |line|
      crates = line.scan(/\[(.)\]/)
    end
  end
end
