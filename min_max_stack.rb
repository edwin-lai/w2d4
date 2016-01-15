require_relative 'my_stack.rb'

class MinMaxStack < MyStack
  def push(item)
    if @store == []
      @store.push(Array.new(3) { item } )
      return nil
    end
    item < min ? minimum = item : minimum = min
    item > max ? maximum = item : maximum = max
    @store.push([item, minimum, maximum])
    nil
  end
  
  def pop
    @store.pop[0]
  end
  
  def min
    peek[1]
  end
  
  def max
    peek[2]
  end
end