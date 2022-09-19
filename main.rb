require_relative "stack"
require_relative "extras"

puts "Start of Testing Stack"

s = Stack.new

s.push(10)
s.push(9)
s.push(8)
s.push(7)
s.push(6)
s.push(5)
s.push(4)
s.push(3)
s.push(2)
s.push(1)
s.push(100)
s.push(1000)

puts s.max()
s.pop()
puts s.max()
s.pop()
puts s.max()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
s.pop()
puts s.max()

puts "End of Testing Stack"

##################################################################

puts "Start of Testing Extras"

e = Extras.new

e.push(10)
puts e.mean() #10.0
e.push(2)
puts e.mean() #6
e.push(3)
puts e.mean() #5
e.push(4)
puts e.mean() #4.75
e.push(100)
puts e.mean() #23.8
e.push(100)
puts e.mean() #36.5

puts "=================="

e.pop()
puts e.mean()
e.pop()
puts e.mean()
e.pop()
puts e.mean()
e.pop()
puts e.mean()
e.pop()
puts e.mean()
e.pop()
puts e.mean()

puts "End of Testing Extras"