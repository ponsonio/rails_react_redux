
class Square ; end

class Rectange < Square ; end

square = Square.new
puts square.is_a? Square
puts square.is_a? Object

