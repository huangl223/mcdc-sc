note
	description: "square_root application root class"
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
			s0: SQUARE_ROOT; s1: SQUARE_ROOT_1; s2: SQUARE_ROOT_2;
			s3: SQUARE_ROOT_3; s4: SQUARE_ROOT_4; s5: SQUARE_ROOT_5; s6: SQUARE_ROOT_6
			s7: SQUARE_ROOT_7; s8: SQUARE_ROOT_8; s9: SQUARE_ROOT_9
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
