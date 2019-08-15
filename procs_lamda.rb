
procs  = [
   Proc.new { |x, y| x + y },
   proc { p "hello squirrels"},
   #lambda
   lambda  { |x| p x**2 },
   -> (name) { 'hello' + name }
]

p procs.map(&:lambda?)

p procs.map{|x| x.lambda? }

#lambdas care about number of args
#procs.each{ |proc| proc.call(1,2)}


#return the function
#@proc_1 = Proc.new { |phrase| return p phrase }

#keep going, return is in the lambda
@proc_1 = lambda { |phrase| return p phrase }

def call_proc
    @proc_1.call('hello squirrels') 
    p 'did I get run'
end

call_proc


