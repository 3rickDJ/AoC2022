require 'camp_cleanup'

describe CampCleanup do
    describe "Part I" do
        context "given a pair of sections find its ranges" do
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("2-4,6-8")
                expect(sections).to eq [2..4,6..8]
            end
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("2-3,4-5")
                expect(sections).to eq [2..3,4..5]
            end
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("5-7,7-9")
                expect(sections).to eq [5..7,7..9]
            end
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("2-8,3-7")
                expect(sections).to eq [2..8,3..7]
            end
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("6-6,4-6")
                expect(sections).to eq [6..6,4..6]
            end
            it "return an array of ranges" do
                scanner = CampCleanup.new
                sections = scanner.sections("2-6,4-8")
                expect(sections).to eq [2..6,4..8]
            end
        end

        context "Given a pair of ranges, say whether one contains the other" do
            it "Return false" do
                scanner = CampCleanup.new
                sections = scanner.contain?("2-6,4-8")
                expect(sections).to be false
            end
            it "Return false" do
                scanner = CampCleanup.new
                sections = scanner.contain?("2-3,4-5")
                expect(sections).to be false
            end
            it "Return false" do
                scanner = CampCleanup.new
                sections = scanner.contain?("5-7,7-9")
                expect(sections).to be false
            end
            it "Return true" do
                scanner = CampCleanup.new
                sections = scanner.contain?("2-8,3-7")
                expect(sections).to be true
            end
            it "Return true" do
                scanner = CampCleanup.new
                sections = scanner.contain?("6-6,4-6")
                expect(sections).to be true
            end
            it "Return false" do
                scanner = CampCleanup.new
                sections = scanner.contain?("2-6,4-8")
                expect(sections).to be false
            end
        end
    end
end
