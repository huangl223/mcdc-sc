note
	description: "recursive_binary_search application root class"
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
			r0: RECURSIVE_BINARY_SEARCH; r1: RECURSIVE_BINARY_SEARCH_1; r2: RECURSIVE_BINARY_SEARCH_2; r3: RECURSIVE_BINARY_SEARCH_3
			r4: RECURSIVE_BINARY_SEARCH_4; r5: RECURSIVE_BINARY_SEARCH_5; r6: RECURSIVE_BINARY_SEARCH_6
			r7: RECURSIVE_BINARY_SEARCH_7; r8: RECURSIVE_BINARY_SEARCH_8; r9: RECURSIVE_BINARY_SEARCH_9
			r10: RECURSIVE_BINARY_SEARCH_10; r11: RECURSIVE_BINARY_SEARCH_11
		do
				--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
