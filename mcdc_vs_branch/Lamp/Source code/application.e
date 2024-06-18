note
	description: "lamp application root class"
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
			l0: LAMP
			l1: LAMP_1; l2: LAMP_2; l3: LAMP_3; l4: LAMP_4
			l5: LAMP_5; l6: LAMP_6; l7: LAMP_7; l8: LAMP_8
			l9: LAMP_9; l10: LAMP_10; l11: LAMP_11; l12: LAMP_12; l13: LAMP_13
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
