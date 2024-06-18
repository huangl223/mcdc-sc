note
	description: "prime_check application root class"
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
			p0: PRIME_CHECK; p1: PRIME_CHECK_1;  p2: PRIME_CHECK_2; p3: PRIME_CHECK_3; p4: PRIME_CHECK_4
			p5: PRIME_CHECK_5;  p6: PRIME_CHECK_6; p7: PRIME_CHECK_7; p8: PRIME_CHECK_8
			p9: PRIME_CHECK_9;  p10: PRIME_CHECK_10; p11: PRIME_CHECK_11; p12: PRIME_CHECK_12; p13: PRIME_CHECK_13; p14: PRIME_CHECK_14
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
