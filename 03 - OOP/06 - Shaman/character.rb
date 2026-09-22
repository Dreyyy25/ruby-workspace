class Character
    attr_accessor :manna

    def initialize
        @manna = 100
    end

    def show_stats
        puts "Manna: #{@manna}"
        self
    end
end