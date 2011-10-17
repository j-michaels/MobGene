class NumPoint
    def initialize(n, x, y)
        @n = n
        @x = x
        @y = y
    end
    
    def loc_to_s
        "#{x}:#{y}"
    end
    
    def self.loc_to_s(x,y)
        "#{x}:#{y}"
    end
end


class NumWorld
    def initialize
        @action_queue = nil
        @grid = {}
        spawn_random(1000)
        calculate_updates
    end
    
    def spawn_random(num)
        num.times do
            x = rand(1000)
            y = rand(1000)
            n = NumPoint.new(rand(1000), x, y)
            @grid[n.loc_to_s] = n
        end
    end
    
    def calculate_updates
        # base case: new world, so @action_queue is nil
        # cycle through all elements
        if @action_queue = nil
            
        else
            @action_queue.each do |item|
                
            end
        end
    end
    
    # actions are currently
    # 0 - attract (bond/fusion)
    # 1 - repulse
    # 2 - disrupt (break bonds)
    # 
    
    # returns an action
    def determine_relationship(a, b)
        
    end
    
    # also returns an action, randomly generated
    def generate_relationship(a, b)
        return [rand(1), absdiff(a,b)]
    end
    
    def absdiff(a,b)
        if a >= b
            return a - b
        else
            return b - a
        end
    end
end