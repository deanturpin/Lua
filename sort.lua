#!/usr/bin/lua5.3

require "histogram"

-- Initialise random number generator
math.randomseed(os.time())

-- Generate sequence of random numbers to sort
sequence = {}
	for i=1,45 do
	sequence[#sequence+1] = math.random(0,40)
end

-- Insertion sort
function sequence:sort()

	local k, v
	for k, v in ipairs(self) do

		-- Catch the last
		if self[k + 1] ~= nil then

			-- Compare now and next
			if self[k] > self[k + 1] then

				-- Swap now and next
				local temp = self[k]
				self[k] = self[k + 1]
				self[k + 1] = temp

				-- Print sequence
				histogram(self)

				-- Sort the new sequence
				sequence:sort()
				break
			end
		end
	end
end

-- Clear the screen
os.execute("clear")

-- Sort the sequence
sequence:sort()

print("Ç'est fini")
