require_relative "min_max_stack.rb"
require_relative "stack_queue.rb"

class MinMaxStackQueue < StackQueue
  def initialize
    @stack1 = MinMaxStack.new
    @stack2 = MinMaxStack.new
  end
  
  def min
    return nil if @stack1.empty? && @stack2.empty?
    return @stack1.peek[1] if @stack2.empty?
    return @stack2.peek[1] if @stack1.empty?
    @stack1.peek[1] < @stack2.peek[1] ? @stack1.peek[1] : @stack2.peek[1]
  end
  
  def max
    return nil if @stack1.empty? && @stack2.empty?
    return @stack1.peek[2] if @stack2.empty?
    return @stack2.peek[2] if @stack1.empty?
    @stack1.peek[2] > @stack2.peek[2] ? @stack1.peek[2] : @stack2.peek[2]
  end
  
  def dequeue
    move_items_to_stack_2
    @stack2.pop
  end
end