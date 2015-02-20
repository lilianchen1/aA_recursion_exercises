def range(start, ending)
  arr = []
  if ending < start
    return arr
  else
    arr + [start] + range(start + 1, ending)
  end
end

def recursive_sum(arr)
  copy = arr.dup
  if copy.empty?
    return 0
  else
    return copy.shift + recursive_sum(copy)
  end

end

def interative_sum(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end


# quicksort(left) + [pivot] + quicksort(right)
