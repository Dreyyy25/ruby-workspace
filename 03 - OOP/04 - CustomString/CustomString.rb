class CustomString 
    
    def initialize
        @string = ""
    end

    def append(*params)
        @string += params.flatten.join("")
        self
    end

    def prepend(*params)
        @string = params.flatten.join("") + @string
        self
    end

    def output()
        puts @string
    end

end

challenge1 = CustomString.new.append("Ruby").append("&", "Rails").prepend("I", " love ").output()
challenge2 = CustomString.new.append("A").append(["B", "C", "D"], ["E", "F", "G", "H"]).prepend(["w", "x"], ["y", "z"]).output()