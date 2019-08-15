class Person 
    
    class << self
        def introduce
            puts "Im an abstract person"
        end
    end     

    #def self.introduce
        #puts "Im an abstract person"
    #end

    def initialize (name)
        @name  = name
    end

    def name
        @name
    end

    def introduce
        puts "hello I'm #{@name} "
    end

end

dave = Person.new('Dave')
Person.introduce
p dave.name
dave.introduce