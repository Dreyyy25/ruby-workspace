class Certificate
    attr_accessor :title, :awardee
    def initialize(title, awardee)
        @title = title
        @awardee = awardee
    end

    def announce 
        puts "#{@title}: #{@awardee}"
    end
end

cert = Certificate.new("Proficient in Backend", "John Doe")
puts cert.title
cert.announce