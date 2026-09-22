require_relative 'mammal'

class Lion < Mammal
    def initialize 
        @health = 170
    end

    def fly 
        @health -= 10
        puts "The lion flew around the field. Health #{@health}"
    end

    def attack_town
        @health -= 50
        puts "The lion attacks the town. Health #{@health}"
    end

    def eat_humans
        @health += 20
        puts "The lion feeds on the townspeople. Health #{@health}"
    end

    def display_health
        puts "This is a lion."
        super
    end
end

lion = Lion.new
3.times { lion.attack_town }
2.times { lion.eat_humans }
2.times { lion.fly }
lion.display_health
