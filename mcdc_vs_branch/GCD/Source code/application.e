note
	description: "gcd application root class"
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
			g0: GCD; g1: GCD_1; g2: GCD_2; g3: GCD_3; g4: GCD_4; g5: GCD_5; g6: GCD_6;
			g7: GCD_7; g8: GCD_8; g9: GCD_9; g10: GCD_10; g11: GCD_11; g12: GCD_12;
			g13: GCD_13; g14: GCD_14; g15: GCD_15; g16: GCD_16; g17: GCD_17; g18: GCD_18;
			g19: GCD_19; g20: GCD_20
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
