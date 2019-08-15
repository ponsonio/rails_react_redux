
#return true
p require_relative 'other'

require 'pp'
require 'colorize'

puts "I'm in main"

#nupe, it don't run again (return false)
p require_relative 'other'

#can use istance var
pp @isntace_var

#can call methods
greetings

#same self
puts self

puts 'hello'.blue

#can't use lcoal var , creates a new scope#
#pp test_var
