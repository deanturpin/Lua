#!/usr/bin/lua5.3

require "utils"

-- A random sequence
local sequence = {
	13, 6, 30, 17, 6, 28, 25, 22, 13, 24, 29, 9, 6, 21, 12, 16, 11, 16, 11, 12,
	-- 1, 31, 3, 15, 12, 10, 18, 11, 13, 28, 10, 28, 21, 5, 27, 22, 12, 26, 24, 8
}

-- Insertion sort
function sequence:sort()

	for key, value in ipairs(self) do
		
		-- Clear value
		-- self[1] = 0

		-- Print sequence
		histogram(self)
	end
end

sequence:sort()

io.write("C'est fini")
