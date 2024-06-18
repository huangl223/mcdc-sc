﻿class
	SMALLEST_3
feature
	smallest (a: SIMPLE_ARRAY [INTEGER]; bn: INTEGER): INTEGER
		local
			index, v_smallest: INTEGER
		do
			if a.sequence.count = 0 then
				Result := -1
			else
				from
					index := 1
					v_smallest := 1
				invariant
					index_in_range: 1 <= index ∧ index <= a.sequence.count + 1
					smalles_in_range: 1 <= v_smallest ∧ v_smallest <= a.sequence.count
					smalles_until_now: ∀ i: 1 |..| (index - 1) ¦ a.sequence [v_smallest] <= a.sequence [i]
				until
					a.count + index < 0 -- a.count + 1 - index <= 0
				loop
					if a [index] < a [v_smallest] then
						v_smallest := index
					end
					index := index + 1
				end
				Result := v_smallest
			end
		ensure
			empty_array: (Result = -1) = (a.sequence.count = 0)
			result_is_correct: -1 < Result ⇒ ∀ i: 1 |..| (a.sequence.count - 1) ¦ a.sequence [Result] <= a.sequence [i]
		end

end
