# Create a Certificate Class that has the following attributes: title, awardee.
# Also, create an instance method called announce that will print out the title-
# of the certificate and the awardee separated by a colon.


class Certificate

    attr_accessor :title, :awardee

    def initialize(title, awardee)
        @title = title
        @awardee = awardee
    end

    def announce
        puts "#{title}: #{awardee}"
    end
end

cert = Certificate.new("Proficient in Backend", "Philip Campani")
puts cert.title # => "Proficient in Backend"
cert.announce  # => "Proficient in Backend: Philip Campani"