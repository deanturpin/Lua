#!/usr/bin/lua5.3

require "histogram"

-- Initialise random number generator
math.randomseed(os.time())

-- Generate sequence of random numbers to sort
sequence = {}
for i=1,20 do
	sequence[#sequence+1] = math.random(0,20)
end

-- Insertion sort - recursive
function sequence:sort1()

	for k, v in ipairs(self) do

		-- Catch the last
		if self[k + 1] ~= nil then

			if self[k] > self[k + 1] then

				-- Swap now and next
				local temp = self[k]
				self[k] = self[k + 1]
				self[k + 1] = temp
			end
		end

		-- Print sequence
		histogram(self)
	end
end

-- Insertion sort - iterative
function sequence:sort2()

	for k, v in ipairs(self) do

		-- Catch the last
		if self[k + 1] ~= nil then

			if self[k] > self[k + 1] then

				-- Swap now and next
				local temp = self[k]
				self[k] = self[k + 1]
				self[k + 1] = temp
			end
		end

		-- Print sequence
		histogram(self)
	end
end

-- Sort the sequence
sequence:sort2()

io.write("C'est fini")
