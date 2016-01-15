require_relative 'my_stack.rb'

class StackQueue
  def initialize
    @stack1 = MyStack.new
    @stack2 = MyStack.new
  end
  
  def enqueue(item)    
    @stack1.push(item)
  end
  
  def dequeue
    move_items_to_stack_2
    @stack2.pop
  end
  
  def size
    @stack1.size + @stack2.size
  end
  
  def empty?
    @stack2.empty?
  end
  
  def peek
    move_items_to_stack_2
    @stack2.peek
  end
  
  private
  
  def move_items_to_stack_2
    if @stack2.empty?
      until @stack1.empty?
        @stack2.push(@stack1.pop)
      end
    end
  end
end