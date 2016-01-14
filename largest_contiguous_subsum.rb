def lcs1(arr)
  sub_arrays = []
  (arr.size).times do |idx|
    (1..(arr.size - idx)).each do |length|
      sub_arrays << arr.slice(idx, length)
    end
  end
  sums = []
  sub_arrays.each do |el|
    sums << el.inject(:+)
  end
  max(sums)
end

def lcs2(arr)
  max_ending_here, max_so_far = 0, 0
  arr.each do |el|
    max_ending_here = max([el, max_ending_here + el])
    max_so_far = max([max_so_far, max_ending_here])
  end
  max_so_far
end

def max(arr)
  maximum = arr.first
  arr.each do |el|
    maximum = el if el > maximum
  end
  maximum
end

