#blocks are not obj, but Proc are

cube_func = Proc.new { |x| x**3 }

#works diff older 1.9
square = proc { |x| x**2 }

p cube_func.call(3)

p square.(2)


def method_with_proc (p1, arg)
    p1.call(arg)
end

p method_with_proc(square,5)

p (1..10).map(&square)

p (1..20).select(&:even?)

odd = :even?.to_proc

p (1..20).select(&odd)

def take_a_block(&block)
    block.call
end

take_a_block { |x| puts "hello joe" }

