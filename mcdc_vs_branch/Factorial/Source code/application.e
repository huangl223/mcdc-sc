note
	description: "jml_factorial application root class"
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
			j0: JML_FACTORIAL; j1: JML_FACTORIAL_1; j2: JML_FACTORIAL_2; j3: JML_FACTORIAL_3; j4: JML_FACTORIAL_4
			j5: JML_FACTORIAL_5; j6: JML_FACTORIAL_6; j7: JML_FACTORIAL_7; j8: JML_FACTORIAL_8
			j9: JML_FACTORIAL_9; j10: JML_FACTORIAL_10; j11: JML_FACTORIAL_11
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
