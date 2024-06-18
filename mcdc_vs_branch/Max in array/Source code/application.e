note
	description: "max_in_array application root class"
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
			m0: MAX_IN_ARRAY; m1: MAX_IN_ARRAY_1; m2: MAX_IN_ARRAY_2; m3: MAX_IN_ARRAY_3
			m4: MAX_IN_ARRAY_4; m5: MAX_IN_ARRAY_5; m6: MAX_IN_ARRAY_6
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
