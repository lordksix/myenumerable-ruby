module MyEnumerable
  def all?
    result = true
    each do |e|
      if yield e
        result = false
        break
      end
    end
    result
  end

  def any?
    result = false
    each do |e|
      if yield e
        result = true
        break
      end
    end
    result
  end

  def filter
    result = []
    each do |e|
      result << e if yield e
    end
    result
  end
end
