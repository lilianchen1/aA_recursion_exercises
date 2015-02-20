def fibonacci(how_many)
  # we need at least [0,1]
  fib = []
  if how_many == 0
    return fib
  elsif how_many == 1
    return [0]
  elsif how_many == 2
    return [0,1]
  else
    return fibonacci(how_many-1) << fibonacci(how_many-1)[-1] + fibonacci(how_many-2)[-1]
  end

end

def fib_num(n)
  if n == 1
    return 0
  elsif n == 2
    return 1
  else
    return fib_sequence(n-1) + fib_sequence(n-2)
  end
end

def fib_sequency(num)
  new_arr = []
  i = 1
  while new_arr.length < num
    new_arr << fib_num(i)
    i += 1
  end
  new_arr
end


def fib2_sequence(n)
  fibs = []

  while fibs < n
    if n == 1
      return 0
    elsif n == 2
      return 1
    else
      return fib_sequence(n-1) + fib_sequence(n-2)
    end
  end

end
