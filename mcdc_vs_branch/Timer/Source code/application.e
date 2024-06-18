note
	description: "timer application root class"
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
			t0: TIME_APP; t1: TIME_APP_1; t2: TIME_APP_2; t3: TIME_APP_3; t4: TIME_APP_4
			t5: TIME_APP_5; t6: TIME_APP_6; t7: TIME_APP_7; t8: TIME_APP_8; t9: TIME_APP_9;
			t10: TIME_APP_10; t11: TIME_APP_11; t12: TIME_APP_12; t13: TIME_APP_13; t14: TIME_APP_14;
			t15: TIME_APP_15; t16: TIME_APP_16; t17: TIME_APP_17; t18: TIME_APP_18; t19: TIME_APP_19;
			t20: TIME_APP_20; t21: TIME_APP_21; t22: TIME_APP_22; t23: TIME_APP_23; t24: TIME_APP_24;
			t25: TIME_APP_25; t26: TIME_APP_26; t27: TIME_APP_27; t28: TIME_APP_28; t29: TIME_APP_29;
			t30: TIME_APP_30; t31: TIME_APP_31; t32: TIME_APP_32; t33: TIME_APP_33; t34: TIME_APP_34;
			t35: TIME_APP_35; t36: TIME_APP_36; t37: TIME_APP_37; t38: TIME_APP_38; t39: TIME_APP_39;
			t40: TIME_APP_40; t41: TIME_APP_41; t42: TIME_APP_42; t43: TIME_APP_43; t44: TIME_APP_44;
			t45: TIME_APP_45; t46: TIME_APP_46; t47: TIME_APP_47; t48: TIME_APP_48; t49: TIME_APP_49;
			t50: TIME_APP_50; t51: TIME_APP_51; t52: TIME_APP_52; t53: TIME_APP_53; t54: TIME_APP_54;
			t55: TIME_APP_55; t56: TIME_APP_56; t57: TIME_APP_57; t58: TIME_APP_58; t59: TIME_APP_59;
			t60: TIME_APP_60; t61: TIME_APP_61; t62: TIME_APP_62; t63: TIME_APP_63; t64: TIME_APP_64;
			t65: TIME_APP_65; t66: TIME_APP_66; t67: TIME_APP_67
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
