require 'supply_stacks'

describe SupplyStacks do
  describe "Part I" do
    context "Divide instruction from input" do
      it "returns 3 arrays" do
        input = <<~TEXT
            [D]    
        [N] [C]    
        [Z] [M] [P]
         1   2   3 
        TEXT
        stack = SupplyStacks.new(input)
        expect(stack.stacks).to eq [["Z","N"],["M","C","D"],["P"]]
      end
      it "returns "
    end
  end
end
