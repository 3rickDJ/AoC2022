require 'Supply_Stacks'

describe SupplyStacks do
  describe "Part I" do
    before do
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
    end
    context "Divide instruction from input" do
      it "returns 3 arrays" do
        stack = SupplyStacks.new
        expect(stack.stacks(input)).to eq [["Z","N"],["M","C","D"],["P"]]
      end
    end
  end
end