note
	description: "smallest application root class"
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
			s0: SMALLEST; s1: SMALLEST_1; s2: SMALLEST_2; s3: SMALLEST_3; s4: SMALLEST_4
			s5: SMALLEST_5; s6: SMALLEST_6; s7: SMALLEST_7; s8: SMALLEST_8
			s9: SMALLEST_9; s10: SMALLEST_10; s11: SMALLEST_11; s12: SMALLEST_12
			s13: SMALLEST_13; s14: SMALLEST_14
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
