
puts 3.class

hash  = Hash.new
puts hash.class

puts Hash.methods
puts Hash.instance_methods

class Dog

    attr_reader :number_legs
    attr_writer :number_legs

    attr_accessor :number_tales

    #initialize, const
    def initialize name 
        @name = name
    end    

    def speak
        puts "bark I'm #{@name}"
    end 

    def name
        @name
    end 

    def name=(new_name)
        @name = new_name
    end    

end 

fido =  Dog.new('fido') 

fido.speak
puts fido.class
fido.name = 'fideo'
fido.number_legs = 4
fido.number_tales = 1
puts 'name:' + fido.name
puts "numner legs: #{fido.number_legs} "  
puts "numner tales: #{fido.number_tales} "  
