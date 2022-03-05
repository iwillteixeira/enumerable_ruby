#!/usr/bin/env ruby
require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(2, 3, 4, 5)

p(list.all? { |e| e <= 5 }) # true
p(list.all? { |e| e >= 5 }) # false
p(list.any? { |e| e >= 5 }) # true
p(list.any? { |e| e > 5 }) # false
p(list.filter { |e| e > 3 }) # [4, 5]
