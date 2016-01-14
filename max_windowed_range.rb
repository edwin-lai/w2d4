def windowed_max_range(arr, width)
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