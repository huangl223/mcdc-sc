note
	description: "Binary search on integer arrays with both iterative and recursive versions."

class
	RECURSIVE_BINARY_SEARCH_4

create
	make

feature
	make
		do

		end

	binary_search_recursive (a: SIMPLE_ARRAY [INTEGER]; value: INTEGER; bn: INTEGER): INTEGER
			-- Index of `value' in `a' using recursive binary search. Return 0 if not found.
			-- https://en.wikipedia.org/wiki/Binary_search_algorithm#Recursive
		require
			no_overflow: a.count <= 200 -- {INTEGER}.max_value
			is_sorted (a.sequence)
			non_negative: across 1 |..| a.count as i all a.sequence [i] >= 0 end
		do
			if a.count > 0 then
				Result := binary_search_recursive_step (a, value, 1, a.count, bn)
			else
				Result := 0
			end
		ensure
			present: a.sequence.has (value) = (Result > 0)
			not_present: not a.sequence.has (value) = (Result = 0)
			found_if_present: Result > 0 implies a.sequence [Result] = value
		end

	binary_search_recursive_step (a: SIMPLE_ARRAY [INTEGER]; value, lower, upper: INTEGER; bn: INTEGER): INTEGER
			-- Index of `value' in `a' between indexes `lower' and `upper'.
		require
			no_overflow: a.count <= 200 -- {INTEGER}.max_value
			sorted: is_sorted (a.sequence)
			lower_in_bounds: 1 <= lower and lower <= a.count + 1
			upper_in_bounds: 0 <= upper and upper <= a.count
			non_negative: across 1 |..| a.count as i all a.sequence [i] >= 0 end
			decreases (upper - lower)
		local
			mid: INTEGER
		do
			if lower > upper then
				Result := 0
			else
				mid := lower + (upper - lower) // 2
				if a [mid] = value then
					Result := mid
						-- check a.sequence.interval (lower, upper)[mid - lower + 1] = a.sequence[mid] end
				elseif a [mid] > value then
					Result := binary_search_recursive_step (a, value, lower, mid - 2, bn)
						-- check a.sequence.interval (lower, upper) ~ a.sequence.interval(lower, mid-1) + a.sequence.interval (mid, upper) end
				else
					Result := binary_search_recursive_step (a, value, mid + 2, upper, bn)
				end
			end
		ensure
			present: a.sequence.interval (lower, upper).has (value) = (Result > 0)
			not_present: not a.sequence.interval (lower, upper).has (value) = (Result = 0)
			found_if_present: Result > 0 implies a.sequence [Result] = value
		end

feature -- Specification

	is_sorted (s: MML_SEQUENCE [INTEGER]): BOOLEAN
			-- Is `s' sorted?
		note
			status: functional, ghost
		do
			Result := across 1 |..| s.count as i all
				across 1 |..| s.count as j all
				i <= j implies s [i] <= s [j] end end
		end

end
