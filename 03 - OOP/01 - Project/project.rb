class Project
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  def elevator_pitch
    "#{name}, #{description}"
  end
end

project = Project.new("Project 1", "Description 1")
puts project.name
puts project.elevator_pitch
