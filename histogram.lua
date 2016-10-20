local calls = 0

-- Print a sequence as a histogram
function histogram(h)

	calls = calls + 1

	-- Jump to top of screen and print timestamp
	os.execute("tput cup 0 0")

	-- For each value in the sequence print a bar to construct the histogram
	for k, v in ipairs(h) do

		-- Print the bar
		for i=1,v+1 do io.write("#") end

		-- Overwrite any old bars
		for i=1,40 do io.write(" ") end

		io.write("\n")
	end

	print("Calls", calls)
end
