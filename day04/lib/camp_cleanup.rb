require 'set'
class CampCleanup
    def sections(secs)
        secs.split(',').collect do |n|
            a, b = n.split('-').map(&:to_i)
            a..b
        end
    end

    def contain?(ranges)
        ranges = sections(ranges)
        a = ranges[0].to_set
        b = ranges[1].to_set
        a.subset?(b) || b.subset?(a)
    end
end

if __FILE__ == $0
    assignments = File.readlines("input.txt")
    campCleanup = CampCleanup.new
    assignments.select{|n| campCleanup.contain?(n) }.size
end
