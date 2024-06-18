note
	description: "binary_search application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			b0: BINARY_SEARCH; b1: BINARY_SEARCH_1; b2: BINARY_SEARCH_2; b3: BINARY_SEARCH_3; b4: BINARY_SEARCH_4
			b5: BINARY_SEARCH_5; b6: BINARY_SEARCH_6; b7: BINARY_SEARCH_7; b8: BINARY_SEARCH_8
			b9: BINARY_SEARCH_9; b10: BINARY_SEARCH_10; b11: BINARY_SEARCH_11; b12: BINARY_SEARCH_12
			b13: BINARY_SEARCH_13; b14: BINARY_SEARCH_14; b15: BINARY_SEARCH_15
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
