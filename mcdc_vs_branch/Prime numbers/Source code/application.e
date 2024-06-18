note
	description: "prime_numbers application root class"
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
			p0: PRIME_NUMBERS; p1: PRIME_NUMBERS_1; p2: PRIME_NUMBERS_2; p3: PRIME_NUMBERS_3; p4: PRIME_NUMBERS_4; p5: PRIME_NUMBERS_5
			p6: PRIME_NUMBERS_6; p7: PRIME_NUMBERS_7; p8: PRIME_NUMBERS_8; p9: PRIME_NUMBERS_9; p10: PRIME_NUMBERS_10
			p11: PRIME_NUMBERS_11; p12: PRIME_NUMBERS_12; p13: PRIME_NUMBERS_13; p14: PRIME_NUMBERS_14; p15: PRIME_NUMBERS_15
			p16: PRIME_NUMBERS_16; p17: PRIME_NUMBERS_17; p18: PRIME_NUMBERS_18; p19: PRIME_NUMBERS_19; p20: PRIME_NUMBERS_20
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
