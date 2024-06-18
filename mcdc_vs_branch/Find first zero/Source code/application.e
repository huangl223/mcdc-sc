note
	description: "find_first_zero application root class"
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
			f0: FIND_FIRST_ZERO; f1: FIND_FIRST_ZERO_1; f2: FIND_FIRST_ZERO_2; f3: FIND_FIRST_ZERO_3
			f4: FIND_FIRST_ZERO_4; f5: FIND_FIRST_ZERO_5; f6: FIND_FIRST_ZERO_6
			f7: FIND_FIRST_ZERO_7; f8: FIND_FIRST_ZERO_8; f9: FIND_FIRST_ZERO_9
			f10: FIND_FIRST_ZERO_10; f11: FIND_FIRST_ZERO_11; f12: FIND_FIRST_ZERO_12
			f13: FIND_FIRST_ZERO_13; f14: FIND_FIRST_ZERO_14

		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
