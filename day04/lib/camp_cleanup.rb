class CampCleanup
    def sections(secs)
        secs.split(',').collect do |n|
            a, b = n.split('-').map(&:to_i)
            a..b
        end
    end
end
