#!/usr/bin/env ruby
module MyEnumerable
    def all?(&block)
      res = true
      each do |value|
        res = false unless block.call(value)
      end
      res
    end
  
    def any?(&block)
      res = false
      each do |value|
        res = true if block.call(value)
      end
      res
    end
  
    def filter(&block)
      res = []
      each do |value|
        res << value if block.call(value)
      end
      res
    end
  end