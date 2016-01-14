require_relative 'my_stack.rb'

class StackQueue
  def initialize
    @stack1 = MyStack.new
    @stack2 = MyStack.new
  end
  
  def enqueue(item)
    until @stack2.empty?
      @stack1.push(@stack2.pop)
    end
    
    @stack1.push(item)
    
    until @stack1.empty?
      @stack2.push(@stack1.pop)
    end
  end
  
  def dequeue
    @stack2.pop
  end
  
  def size
    @stack2.size
  end
  
  def empty?
    @stack2.empty?
  end
  
  def peek
    @stack2.peek
  end
end