note
	description: "heater application root class"
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
			h0: HEATER; h1: HEATER_1; h2: HEATER_2; h3: HEATER_3; h4: HEATER_4
			h5: HEATER_5; h6: HEATER_6; h7: HEATER_7; h8: HEATER_8
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
