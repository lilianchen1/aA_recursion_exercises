def recursion1(num, exp)
  if exp == 0
    return 1
  else
    num * recursion1(num, exp - 1)
  end

end

def recursion2(num, exp)
  if exp == 0
    return 1
  elsif exp.odd?
    num * recursion2(num, (exp-1)/2) * recursion2(num, (exp-1)/2)
  elsif exp.even?
    recursion2(num, exp/2) * recursion2(num, exp/2)
  end

end
