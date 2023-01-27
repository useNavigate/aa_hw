 class Stack
    attr_reader :array
    def initialize
      @array=[]
    end

    def push(el)
      @array.push(el)
    end

    def pop
      @array.pop
    end

    def peek
      @array.last
    end
  end