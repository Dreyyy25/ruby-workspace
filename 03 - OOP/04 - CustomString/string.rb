class CustomString
    attr_accessor :output

    def initialize
        @output = ""
    end

    def append *words
        @output += construct(words) 
        self
    end

    def prepend *words
        @output = construct(words) + @output
        self
    end

    private def construct *words
        str = ""
        words.each {
            |element|
            if element.class == Array
                str += construct(*element)
            else
                str += element
            end
        }
        str
    end
end

challenge1 = CustomString.new.append("Ruby").append("&", "Rails").prepend("I", " love ").output # => "I love Ruby&Rails"
challenge2 = CustomString.new.append("A").append(["B", "C", "D"], ["E", "F", "G", "H"]).prepend(["w", "x"], ["y", "z"]).output # => "wxyzABCDEFGH"
puts challenge1
puts challenge2