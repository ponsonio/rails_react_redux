def main_method
    puts self
end 

main_method

class Hamburguer 
    
    puts "self referes to class #{self}"  #class

    def initialize
        puts " self referes to instance #{self}"  #refers instance
    end

end

hamb = Hamburguer.new

