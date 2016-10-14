#!/usr/bin/lua5.3

blah = 1
print(blah, type(blah))

blah = "blah"
print(blah, type(blah))

blah = 0.0
print(blah, type(blah))

-- floats precise to 13 digits
blah = 1.99999999999955
print(blah, type(blah))

print(blah_undef, type(blah_undef))

-- Built in maths
seq = {1,2,3,4,5,6,7}
print(math.max(seq))
print(math.min(1,2,3,4,5,6,7,8))

-- Random numbers
math.randomseed(os.time())
print(math.random())
print(math.random(10))
print(math.random(100,105))

-- Time
print(os.time())

-- PI
print(math.pi)

-- Logical operators
