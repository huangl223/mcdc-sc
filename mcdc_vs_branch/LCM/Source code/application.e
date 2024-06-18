note
	description: "two_way_max application root class"
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
			l0: LCM; l1: LCM_1; l2: LCM_2; l3: LCM_3; l4: LCM_4; l5: LCM_5; l6: LCM_6; l7: LCM_7; l8: LCM_8
			l9: LCM_9; l10: LCM_10; l11: LCM_11; l12: LCM_12; l13: LCM_13; l14: LCM_14; l15: LCM_15; l16: LCM_16
			l17: LCM_17; l18: LCM_18; l19: LCM_19; l20: LCM_20; l21: LCM_21; l22: LCM_22; l23: LCM_23; l24: LCM_24
			l25: LCM_25; l26: LCM_26; l27: LCM_27; l28: LCM_28; l29: LCM_29; l30: LCM_30; l31: LCM_31; l32: LCM_32
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
