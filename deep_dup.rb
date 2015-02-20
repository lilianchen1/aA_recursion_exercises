# def deep_dup(copy)
#   outer_array = Array.new(copy)
#   outer_arr = []
#   if outer_array.empty?
#     return outer_arr
#   else
#     current_element = outer_array.shift
#
#     if current_element.is_a?(Array)
#       p "I'm array"
#       p current_element
#       p outer_arr
#       outer_arr << Array.new(current_element) << deep_dup(outer_array)
#     else
#       p "I'm not array"
#       p current_element
#       p outer_arr
#       outer_arr + [current_element] + deep_dup(outer_array)
#     end
#   end
# end


def deep_dup(outer)
  return outer if outer.empty?

  temp = []
  outer.each do |element|
    if element.is_a?(Array)
      temp << deep_dup(Array.new(element))
    else
      temp << element
    end
  end

  temp
end
