def bad_two_sum?(arr, num)
  (0...arr.size - 1).each do |idx1|
    ((idx1 + 1)...(arr.size)).each do |idx2|
      return true if arr[idx1] + arr[idx2] == num
    end
  end
  false
end # O(n**2)

def okay_two_sum?(arr, num)
  arr.sort
  head = 0
  tail = arr.size - 1
  while head < tail
    return true if arr[head] + arr[tail] == num
    tail -= 1 if arr[head] + arr[tail] > num
    head += 1 if arr[head] + arr[tail] < num
  end
  false
end

def pair_sum?(arr, target)
  addends = {}
  arr.each do |el|
    return true if addends.key?(target - el)
    addends[el] = target - el;
  end
  false
end