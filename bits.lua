#!/usr/bin/lua5.3

-- https://www.youtube.com/watch?v=iMacxZQMPXs

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
-- math.randomseed(os.time())
print(math.random())
print(math.random(10))
print(math.random(100,105))

-- Time
print(os.time())

-- PI
print(math.pi)

-- Create a list of random numbers
randoms = {}
for i=1,20 do
	randoms[#randoms+1] = math.random(0,20)
end

for k,v in ipairs(randoms) do
	print(v)
end

lines = os.execute("tput lines")
print("Lines", lines)

-- Logical operators
