class CustomString
  def initialize
    @output = ""
  end

  def append(*strings)
    # flatten lets this work with strings or arrays of strings
    @output += strings.flatten.join
    self
  end

  def prepend(*strings)
    @output = strings.flatten.join + @output
    self
  end

  def output
    @output
  end
end

challenge1 = CustomString.new
  .append("Ruby")
  .append("&", "Rails")
  .prepend("I", " love ")
  .output
puts challenge1

challenge2 = CustomString.new
  .append("A")
  .append(["B", "C", "D"], ["E", "F", "G", "H"])
  .prepend(["w", "x"], ["y", "z"])
  .output
puts challenge2
