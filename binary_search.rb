def binary_search(array, target)

  if array.length <= 2 && array.none? {|num| num == target }
    p "should return not found"
    return nil

  else #array.length > 2
    middle_index = array.length / 2
    middle_value = array[middle_index]

    if target == middle_value
      middle_index
    elsif target > middle_value
      offset = array.length / 2
      p "greater"
      p "middle value: #{middle_value}"
      p array[middle_index...array.length]
      p "exit"
      if binary_search(array[middle_index...array.length], target) != nil
        offset + binary_search(array[middle_index...array.length], target)
      end
    elsif target < middle_value
      p "less"
      p "middle value: #{middle_value}"
      p array[0...middle_index]
      p "exit"
      binary_search(array[0...middle_index], target)
    end
  end

end
