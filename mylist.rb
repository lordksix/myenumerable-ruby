require_relative 'myenumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list.flatten
  end

  def each(&)
    @list.each(&)
    self
  end
end
