class World
    def initialize
        @mobs = Hash.new
    end
    
    def move_mob(mob, x, y)
        mob.move(x, y)
        @mobs[mob.lochash] = mob
    end
end


class Mob
    def initialize(parents=nil)
        @gear = []
        @dna1 = []
        @dna2 = []
        
        if parents!=nil
            
        else
            (rand(10)+5).times do
                dna1<<rand(100)
                dna2<<rand(100)
            end
        end
    end
    
    def move(x,y)
        @x = x
        @y = y
    end
    
    def lochash
        "#{@x}#{@y}".to_i
    end
    
    def express()
        dna1.each_with_index do |e, i|
            
        end
    end
end