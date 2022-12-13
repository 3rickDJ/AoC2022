require 'calories_counter'

describe CaloriesCounter do
  context "count how many calories a single meal (line) has" do
    it "Gets 1k calories" do
      counter = CaloriesCounter.new
      calories = counter.calculate("1000")
      expect(calories).to eq( 1000 )
    end
    it "Gets 2k calories" do
      counter = CaloriesCounter.new
      calories = counter.calculate("2000")
      expect(calories).to eq( 2000 )
    end
    it "Gets 3k calories" do
      counter = CaloriesCounter.new
      calories = counter.calculate("3000")
      expect(calories).to eq( 3000 )
    end
  end

  context "given a set of calories, return the total sum of them" do
    it "Return 6000" do
      counter = CaloriesCounter.new
      calories = counter.calculate("1000\n2000\n3000")
      expect(calories).to eq(6000)
    end
    it "Return 4000" do
      counter = CaloriesCounter.new
      calories = counter.calculate("4000")
      expect(calories).to eq(4000)
    end
    it "Return 11000" do
      counter = CaloriesCounter.new
      calories = counter.calculate("5000\n6000")
      expect(calories).to eq(11000)
    end
  end

  context "Return the elf carrying the most calories" do
    it "returns 24000" do
      counter = CaloriesCounter.new
      calories = counter.most_calories("1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000")
      expect(calories).to eq(24000)
    end
  end
  context "Part II" do
    it "return 45000" do
      counter = CaloriesCounter.new
      calories = counter.most_calories("1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000",3)
      expect(calories).to eq(45000)
    end
  end
end
