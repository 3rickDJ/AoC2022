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

    def overlap?(ranges)
      ranges = sections(ranges)
      a = ranges[0].to_set
      b = ranges[1].to_set
      ! a.disjoint? b
    end
    def overlapping_assigns(assignments)
      assignments.split("\n").select{ |n| overlap? n }.size
    end
end

if __FILE__ == $0
    assignments = File.read("input.txt")
    scanner = CampCleanup.new
    p scanner.overlapping_assigns(assignments)
end
