-- Sleep
function sleep(n)
	os.execute("sleep " .. tonumber(n))
end

-- Print a bar
-- --------|
function bar(n)

	-- Exit case: the cap atop the bar
	if n == 1 then return "|"

	-- Otherwise return the stem and recurse
	else return "-" .. bar(n - 1) end
end

-- Print a sequence as a histogram
function histogram(h)

	-- For each value in the sequence print a bar to construct histogram
	for key, value in pairs(sequence) do

		io.write(bar(value), "\n")
	end
end
