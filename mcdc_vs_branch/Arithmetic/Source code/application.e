note
	description: "arithmetic application root class"
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
			a: ARITHMETIC
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
