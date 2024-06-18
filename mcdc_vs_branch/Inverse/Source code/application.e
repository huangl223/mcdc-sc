note
	description: "inverse application root class"
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
			i0: INVERSE; i1: INVERSE_1; i2: INVERSE_2; i3: INVERSE_3; i4: INVERSE_4
			i5: INVERSE_5; i6: INVERSE_6; i7: INVERSE_7; i8: INVERSE_8
			i9: INVERSE_9; i10: INVERSE_10; i11: INVERSE_11; i12: INVERSE_12
			i13: INVERSE_13; i14: INVERSE_14; i15: INVERSE_15
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
