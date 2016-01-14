def my_min1(arr)
  arr.each do |el1|
    no_members_less = true
    arr.each do |el2|
      no_members_less = false if el1 > el2
    end
    next unless no_members_less
    return el1
  end
end

def my_min2(arr)
  min = arr.first
  arr.each do |el|
    min = el if el < min
  end
  min
end