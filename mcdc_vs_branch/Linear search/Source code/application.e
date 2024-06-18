note
	description: "linear_search application root class"
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
			l0: LINEAR_SEARCH; l1: LINEAR_SEARCH_1; l2: LINEAR_SEARCH_2; l3: LINEAR_SEARCH_3
			l4: LINEAR_SEARCH_4; l5: LINEAR_SEARCH_5; l6: LINEAR_SEARCH_6; l7: LINEAR_SEARCH_7
			l8: LINEAR_SEARCH_8; l9: LINEAR_SEARCH_9; l10: LINEAR_SEARCH_10; l11: LINEAR_SEARCH_11
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
