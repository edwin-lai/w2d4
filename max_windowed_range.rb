require_relative 'min_max_stack_queue.rb'

def bad_windowed_max_range(arr, width)
  current_max_range = 0
  (0..(arr.count - width)).each do |idx|
    window = arr.slice(idx, width)
    maximum = window.max
    minimum = window.min
    range = maximum - minimum
    current_max_range = range if current_max_range < range
  end
  current_max_range
end

def windowed_max_range(arr, width)
  current_max_range = 0
  window = MinMaxStackQueue.new
  pos = 0
  width.times do
    |idx| window.enqueue(arr[idx])
    pos += 1
  end
  until pos > arr.size
    maximum = window.max
    minimum = window.min
    range = maximum - minimum
    current_max_range = range if current_max_range < range
    window.dequeue
    window.enqueue(arr[pos]) unless arr[pos].nil?
    pos +=1
  end
  current_max_range
end