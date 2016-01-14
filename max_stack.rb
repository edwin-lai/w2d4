require_relative 'my_stack.rb'

class MaxStack < Stack
  attr_reader :max
  
  def initialize
    super
    @max = nil
  end
  
  def push(item)
    super(item)
    @max = item if @max.nil? || item > @max
  end
  
  def pop
    
  end
end