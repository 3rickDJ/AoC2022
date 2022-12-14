require 'rucksack_sorter'

describe RucksackSorter do
  context "Given a list of items, return wich are in one compartment or another" do
    it "Rucksack first" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("vJrwpWtwJgWrhcsFMMfFFhFp")
      expect(left).to eq  "vJrwpWtwJgWr"
      expect(right).to eq "hcsFMMfFFhFp"
    end
    it "Rucksack second" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL")
      expect(left).to eq  "jqHRNqRjqzjGDLGL"
      expect(right).to eq "rsFMfFZSrLrFZsSL"
    end
    it "Rucksack third" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("PmmdzqPrVvPwwTWBwg")
      expect(left).to eq  "PmmdzqPrV"
      expect(right).to eq "vPwwTWBwg"
    end
    it "Rucksack fourth" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn")
      expect(left).to eq "wMqvLMZHhHMvwLH"
      expect(right).to eq  "jbvcjnnSBnvTQFn"
    end
    it "Rucksack fifth" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("ttgJtRGJQctTZtZT")
      expect(left).to eq  "ttgJtRGJ"
      expect(right).to eq "QctTZtZT"
    end
    it "Rucksack sixth" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("CrZsJsPPZsGzwwsLwLmpwMDw")
      expect(left).to eq  "CrZsJsPPZsGz"
      expect(right).to eq "wwsLwLmpwMDw"
    end
  end
end
