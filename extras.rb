require_relative "stack"

class Extras < Stack
    def initialize
        super
        @total_stack = 0
    end
    
    def push(x)
        @total_stack += x
        super
    end
    
    def pop
        @total_stack -= (@stack.last > @max_element) ? @max_element : @stack.last
        super
        
    end

    def mean
        # mean method here will be efficient since we're accumlating the total of the stack values  
        @stack.empty? ? 0.0 : @total_stack / (@stack.count * 1.0)
    end
end