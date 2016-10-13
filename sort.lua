#!/usr/bin/lua5.3

require "utils"

-- A random sequence
local sequence = {
	13, 6, 30, 17, 6, 28, 25, 22, 13, 24, 29, 9, 6, 21, 12, 16, 11, 16, 11, 12,
	-- 1, 31, 3, 15, 12, 10, 18, 11, 13, 28, 10, 28, 21, 5, 27, 22, 12, 26, 24, 8
}

-- Insertion sort
function sequence:sort()

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
sequence:sort()

io.write("C'est fini")
