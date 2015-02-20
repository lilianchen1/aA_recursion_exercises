def merge_sort(array)
  # # outer_array = []
  # if array.empty?
  #   return []
  #
  # elsif array.length == 1
  #   # p "outer array + array #{outer_array + [array]}"
  #   return array
  # else
  #   middle_index = array.length / 2
  #   left_array = array[0...middle_index]
  #   right_array = array[middle_index...array.length]
  #   #  p "left array #{left_array}"
  #   #  p "right array #{right_array}"
  #   #  p "outer array #{outer_array}"
  #   merge_sort(left_array) + merge_sort(right_array)
  #   # merge_helper(left_array, right_array)
  # end
  p "main!"

  return array if array.length == 1
  p "current_array: #{array}"

  pivot = array.length / 2
  left = array.take(pivot)
  p "current_left: #{left}"
  right = array.drop(pivot)
  p "current_right: #{right}"
  merge_helper(merge_sort(left), merge_sort(right))


end

def merge_helper(array1, array2)
  result = []
  p "helper!"
  p "array1: #{array1}"
  p "array2: #{array2}"
  while array1.length > 0 && array2.length > 0
    first = array1.shift
    second = array2.shift
    if first < second
      result << first
      result << second
    else
      result << second
      result << first
    end
  end

  if !array1.empty?
    p "helper result: #{result + array1}"
    result + array1
  elsif !array2.empty?
    p "helper result: #{result + array2}"
    result + array2
  else
    p "helper result: #{result}"
    result
  end

end
