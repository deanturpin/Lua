-- Sleep
function sleep(n) os.execute("sleep " .. tonumber(n)) end

-- Print a bar
-- --------|
function bar(n)

	-- Exit case: the cap atop the bar
	if n == 1 then return "|"

	-- Otherwise return the stem and recurse
	else return "-" .. bar(n - 1) end
end

local calls = 0

-- Print a sequence as a histogram
function histogram(h)

	calls = calls + 1

	-- Clear the screen
	os.execute("clear")

	-- For each value in the sequence print a bar to construct histogram
	for k, v in ipairs(h) do

		-- io.write(bar(v), "\n")
		io.write(v, "\n");
	end

	print("Calls", calls)

	sleep(0.05);
end
