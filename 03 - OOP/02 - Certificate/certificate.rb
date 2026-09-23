class Certificate
  attr_accessor :title, :awardee

  def initialize(title, awardee)
    @title = title
    @awardee = awardee
  end

  def announce
    "#{title}: #{awardee}"
  end
end

certificate = Certificate.new("Proficient in Backend", "Philip Campani")
puts certificate.title
puts certificate.announce
