
module Enumerable
#class Array
    def custom_each
        i = 0
        while i < self.length do
            yield self[i]
            i += 1
        end
        self     
    end

    def gruop_by_criteria
        yes_group = []
        no_group = []
        self.each do |x|
          if yield (x)
            yes_group << x
          else
            no_group << x
          end    
        end
        [yes_group, no_group]    
    end

end

[2,3,4].custom_each { |x| puts x**2 }

(1..10).to_a.custom_each { |x| puts x }

p (1..10).to_a.gruop_by_criteria { |x|  x.even? }

#Enumerable its on range, array, collection (select, find, )
p (1..10).gruop_by_criteria { |x|  x.even? }

