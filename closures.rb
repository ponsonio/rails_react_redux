#procs and lambdas are clousures, fucntions access to the scope

def proc_maker
    counter = 1
    proc {counter = counter + 1}
end

incrementer = proc_maker()
p incrementer.call
p incrementer.call