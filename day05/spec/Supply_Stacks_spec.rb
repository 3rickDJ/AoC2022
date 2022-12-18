require 'supply_stacks'

describe SupplyStacks do
  describe "Part I" do
    context "Divide instruction from input" do
      it "returns 3 arrays" do
        input = <<~EOT
            [D]
        [N] [C]
        [Z] [M] [P]
         1   2   3

        move 1 from 2 to 1
        move 3 from 1 to 3
        move 2 from 2 to 1
        move 1 from 1 to 2
        EOT
        stack = SupplyStacks.new(input)
        expect(stack.stacks).to eq [["Z","N"],["M","C","D"],["P"]]
      end
    end
  end
end
