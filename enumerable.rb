#!/usr/bin/env ruby
module MyEnumerable
    def all?(&block)
      res = true
      each do |x|
        res = false unless block.call(x)
      end
      res
    end
  
    def any?(&block)
      res = false
      each do |x|
        res = true if block.call(x)
      end
      res
    end
  
    def filter(&block)
      res = []
      each do |x|
        res << x if block.call(x)
      end
      res
    end
  end