require_relative './myenumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def print_list
    puts @list.kind_of?(Array)
  end
end

new_list = MyList.new(1, 2, 3, 4)
new_list.print_list
new_list.filter
