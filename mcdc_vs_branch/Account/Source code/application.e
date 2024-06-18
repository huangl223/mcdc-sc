note
	description: "account application root class"
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
			a0: ACCOUNT; a1: ACCOUNT_1; a2: ACCOUNT_2; a3: ACCOUNT_3
			a4: ACCOUNT_4; a5: ACCOUNT_5; a6: ACCOUNT_6; a7: ACCOUNT_7; a8: ACCOUNT_8; a9: ACCOUNT_9
			a10: ACCOUNT_10; a11: ACCOUNT_11; a12: ACCOUNT_12; a13: ACCOUNT_13; a14: ACCOUNT_14
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
