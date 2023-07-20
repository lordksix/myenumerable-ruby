require_relative 'myenumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list.flatten
  end

  def each(&block)
    @list.each(&block)
    self
  end
end
