note
	description: "two_way_max application root class"
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
			t0: TWO_WAY_MAX; t1: TWO_WAY_MAX_1; t2: TWO_WAY_MAX_2; t3: TWO_WAY_MAX_3
			t4: TWO_WAY_MAX_4; t5: TWO_WAY_MAX_5; t6: TWO_WAY_MAX_6
			t7: TWO_WAY_MAX_7
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
