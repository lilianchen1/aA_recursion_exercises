class Array
  def my_each(&prc)
    self.length.times do |index|
      prc.call(self[index])
    end
    self
  end

  def my_map(&prc)
    new_array = []
    self.my_each do |el|
      new_array << prc.call(el)
    end
    new_array
  end

  def my_select(&prc)
    new_array = []
    self.my_each do |el|
      new_array << el if prc.call(el)
    end
    new_array
  end

  def my_inject(&prc)
    copy = self.dup
    accum = dup.shift
    copy.my_each do |el|
      accum = prc.call(accum, el)
    end
    accum
  end

  def my_sort!(&prc)
    sorted = false
    until sorted
      sorted = true
      (0...self.length - 1).each do |index|
        if prc.call(self[index], self[index+1]) == 1 #[index] > self[index + 1]
          self[index], self[index+1] = self[index+1], self[index]
          sorted = false
        end
      end
    end
    self
  end

end
