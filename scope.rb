
@bananas = 0

def add_banana
    @bananas +=1
    puts @bananas
end

add_banana

class Customer
    @@total_customer = 0

    def initialize
        @@total_customer += 1
        puts @@total_customer
    end
end

class VIP < Customer

end

Customer.new
Customer.new
Customer.new
VIP.new
Customer.new

