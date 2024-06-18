note
	description: "sum_and_max application root class"
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
			s0: SUM_AND_MAX; s1: SUM_AND_MAX_1; s2: SUM_AND_MAX_2;  s3: SUM_AND_MAX_3; s4: SUM_AND_MAX_4
			 s5: SUM_AND_MAX_5; s6: SUM_AND_MAX_6;  s7: SUM_AND_MAX_7; s8: SUM_AND_MAX_8
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
