require_relative 'character'

class Swordsman < Character

    def initialize()
        super
        @manna += 20
    end
    
    def slash()
        @manna -= 5
        self
    end
    
    def double_hit()
        @manna -= 10
        self
    end

    def combo_slash()
        @manna -= 20
        self
    end

    def show_stats()
        puts "This is Swordsman"
        super
    end

end

swordsman1 = Swordsman.new

swordsman1.double_hit()
swordsman1.double_hit()
swordsman1.double_hit()
swordsman1.combo_slash()
swordsman1.combo_slash()
swordsman1.slash()
swordsman1.slash()
swordsman1.show_stats()