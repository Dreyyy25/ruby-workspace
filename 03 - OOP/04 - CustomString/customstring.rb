class CustomString
    attr_reader :result

    def initialize
        @result = ""
    end

    def append(*params)
        @result.concat(params.flatten.join)
        self
    end

    def prepend(*params)
        @result.prepend(params.flatten.join)
        self
    end

    def output
        @result
    end
end

challenge1 = CustomString.new.append("Ruby").append("&", "Rails").prepend("I", " love ").output # => "I love Ruby&Rails"
puts challenge1
challenge2 = CustomString.new.append("A").append(["B", "C", "D"], ["E", "F", "G", "H"]).prepend(["w", "x"], ["y", "z"]).output # => "wxyzABCDEFGH"
puts challenge2