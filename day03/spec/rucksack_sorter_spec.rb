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
  context "Given a pair of strings, check whether they have common elements" do
    it "returns p" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("vJrwpWtwJgWrhcsFMMfFFhFp")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "p"
    end
    it "returns L" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "L"
    end
    it "returns P" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("PmmdzqPrVvPwwTWBwg")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "P"
    end
    it "returns v" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "v"
    end
    it "returns t" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("ttgJtRGJQctTZtZT")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "t"
    end
    it "returns s" do
      scanner = RucksackSorter.new
      left, right = scanner.compartments("CrZsJsPPZsGzwwsLwLmpwMDw")
      common_items = scanner.common_items(left, right)
      expect(common_items).to eq "s"
    end
  end
  context "Given a letter (upper/lowerCase) return a level of priority" do
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("p")
      expect(priority).to eq 16
    end
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("L")
      expect(priority).to eq 38
    end
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("P")
      expect(priority).to eq 42
    end
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("v")
      expect(priority).to eq 22
    end
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("t")
      expect(priority).to eq 20
    end
    it "returns 16" do
      scanner = RucksackSorter.new
      priority = scanner.priority("s")
      expect(priority).to eq 19
    end
  end
  context "find the sum of the priorities  of each item that appear in both compartments in a rucksack" do
    it "returns 157" do
      scanner = RucksackSorter.new
      rucksack_items = "JrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
      total_priority = scanner.total_priority(rucksack_items)
      expect(total_priority).to eq 157
    end
  end
  describe "Part II" do
    context "Each 3 lines, represent a group of 3 elves" do
      it "returns an array of groups of 3 elves" do
        elves = [["vJrwpWtwJgWrhcsFMMfFFhFp","jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg"],
                 ["wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn","ttgJtRGJQctTZtZT","CrZsJsPPZsGzwwsLwLmpwMDw"]]
        list = "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
        scanner = RucksackSorter.new
        groups = scanner.group_elves(list)
        expect(groups).to eq(elves)
      end
    end
    context "Every group has a common item" do
      it "returns r" do
        scanner = RucksackSorter.new
        list = ["vJrwpWtwJgWrhcsFMMfFFhFp","jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg"]
        badge = scanner.common_badge(list)
        expect(badge).to eq 'r'
      end
      it "returns Z" do
        scanner = RucksackSorter.new
        list = ["wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn","ttgJtRGJQctTZtZT","CrZsJsPPZsGzwwsLwLmpwMDw"]
        badge = scanner.common_badge(list)
        expect(badge).to eq 'Z'
      end
    end
    context "Find the sum of the priorities of every badge in each group of elves" do
      it "returns 70" do
        list = "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
        scanner = RucksackSorter.new
        total_priority = scanner.total_priority_badge(list)
        expect(total_priority).to eq 70
      end
    end
  end
end
