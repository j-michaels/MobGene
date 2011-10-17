class World
    def initialize
        @mobs = Hash.new
        @actions = {}
    end
    
    def move_mob(mob, x, y)
        mob.move(x, y)
        @mobs[mob.lochash] = mob
    end
    
    def run_action(id)
        if @world.action_exists? id
            
            
        else
            @world.new_action
        end
    end
    
    def new_action(id)
        @actions[id] = [@possible_actions.random, ]
    end
    
    # possible actions
    # none -- treat as values
    # move
    # ability
    # if
    #   gtr
    #   less
    #   eql
    # remember
    # command
    # mate
end




class Mob
    def initialize(parents=nil, world)
        @gear = []
        @dna1 = []
        @dna2 = []
        @memory = []
        
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
    
    def verify_length
        dna1.length == dna2.length
    end
    
    def express()
        break unless verify_length
        dna1.each_with_index do |e, i|
            if e > dna2[i]
                @world.run_command(self, e)
            else
                @world.run_command(self, dna2[i])
            end
        end
    end
    

end