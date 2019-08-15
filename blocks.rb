#(1..10).each{ |x| p x**2}


def square(x)
    x**2
end

p square(1)
p square(3)

def do_something(x)
    yield(x) if block_given?
end


p do_something(1)
p do_something(3) { |x| x**2 }
p do_something(12) { |x| x**2 + 1}
p do_something(100) { |x| x**2 + 2}

def sum_result(x,y)
    x_result = yield(x)
    y_result = yield(y)
    puts "x_result #{x_result}"
    puts "y_result #{y_result}"
    x_result + y_result
end

p sum_result(2,3) { |x| x**2 }
p sum_result(2,3) { |x| x**x }

def sum_both
    yield(3,4)
end

p sum_both { |x, y| x**2 - y }

