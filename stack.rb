class Stack < Array

    def initialize
        @stack = Array.new
        @max_element = 0
    end
    
    def push(x)
        if @stack.empty?
            @max_element = x 
            @stack.push(x)
            return
        end
        
        if (x > @max_element) 
            @stack.push(2 * x - @max_element)
            @max_element = x
        else
            @stack.push(x)
        end
    end
    
    def pop
        @temp = @stack.pop();

        if @stack.empty?
            @max_element = -1
            return "Stack is empty"
        end 
         
        if @temp > @max_element
            @max_element = 2 * @max_element - @temp
        end  
    end

    def max
        # max method here will be excuted in O(1) time complexity since we're saving the difference between the latest and current max values 
        @max_element
    end

    def is_empty
        @stack.empty?
    end
end