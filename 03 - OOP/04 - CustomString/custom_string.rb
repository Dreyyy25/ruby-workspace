class CustomString
    attr_reader :output

    def initialize
        @output = ""
    end

    def append(*params)
        @output += params.flatten.join
        self
    end

    def prepend(*params)
        @output = params.flatten.join + @output
        self
    end
end

challenge1 = CustomString.new.append("Ruby").append("&", "Rails").prepend("I", " love ").output # => "I love Ruby&Rails"
puts challenge1

challenge2 = CustomString.new.append("A").append(["B", "C", "D"], ["E", "F", "G", "H"]).prepend(["w", "x"], ["y", "z"]).output # => "wxyzABCDEFGH"
puts challenge2
