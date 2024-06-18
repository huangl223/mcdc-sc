﻿class
	QS_QUEUE_64
create
	make
feature -- {NONE}
	make
		note
			status: creator
			explicit: contracts, wrapping
		do
			front := 1
			rear := 1
			exception_is_raised := False
		ensure
			exception_not_raise: exception_is_raised = False
			front_is_front: front = 1
			rear_is_front: rear = 1
		end
feature
	max: INTEGER = 100
	front: INTEGER
	rear: INTEGER
	exception_is_raised: BOOLEAN
	queue: SIMPLE_ARRAY [INTEGER]
		attribute
			Result := create {SIMPLE_ARRAY [INTEGER]}.make (max)
		end

	enter (data: INTEGER; bn: INTEGER)
		note
			explicit: wrapping
		require
			is_wrapped: is_wrapped
		do
			if not is_full(bn) then
				unwrap
				queue [rear] := data
				rear := rear + 1
				wrap
			else
				unwrap
				exception_is_raised := True
				wrap
			end
		ensure
			if_full: (old is_full(bn)) ⇒ exception_is_raised
			not_full_rear: not (old is_full(bn)) ⇒ (old rear) = rear - 1
			not_full_set: not (old is_full(bn)) ⇒ queue.sequence [rear - 1] = data
		end

	delete(bn: INTEGER): INTEGER
		note
			status: impure
			explicit: wrapping, contracts
		require
			is_wrapped: is_wrapped
		local
			poll, i: INTEGER
		do
			if not is_empty (bn) then
				from
					poll := queue [front]
					i := 1
				invariant
					-- rear_stays: rear = rear.old_
					is_wrapped: is_wrapped

					-- shifted_until_now: ∀ j: i |..| (rear - 1) ¦ queue.sequence [j] = queue.sequence.old_ [j]
					-- shifted_until_now: ∀ j: 1 |..| (i - 1) ¦ queue.sequence [j] = queue.sequence.old_ [j + 1]
					i_in_range: 1 <= i ∧ i < rear

				until
					i + 1 >= rear
				loop
					unwrap
					queue [i] := queue [i + 1]
					wrap
					i := i + 1
				variant
					max - i
				end
				unwrap
				rear := rear - 1
				wrap
				Result := poll
			else
				unwrap
				exception_is_raised := True
				wrap
			end
		ensure
			is_wrapped: is_wrapped
			modify: modify_field (["exception_is_raised", "rear", "queue", "closed"], Current)
			if_empty: (old (rear = front)) ⇒ exception_is_raised
			not_empty_rear: not (old (rear = front)) ⇒ rear = (old rear - 1)
			not_empty_result: not (old (rear = front)) ⇒ Result = (old queue.sequence [front])
			not_empty_queue: not (old (rear = front)) ⇒ ∀ j: 1 |..| (rear - 1) ¦ queue.sequence [j] = (old queue.sequence) [j + 1]
		end

	peek(bn: INTEGER): INTEGER
		note
			explicit: wrapping
		require
			is_fully_writable
			is_wrapped: is_wrapped
		do
			if not is_empty (bn) then
				Result := queue [front]
			else
				unwrap
				exception_is_raised := True
				wrap
			end
		ensure
			if_empty: is_empty (bn) ⇒ exception_is_raised
			if_not_empty: not is_empty (bn) ⇒ Result = queue.sequence [front]
		end

	is_contain (key: INTEGER; bn: INTEGER): BOOLEAN
		local
			index: INTEGER
		do
			from
				Result := False
				index := 1
			invariant
				index_in_range: 1 <= index ∧ index <= rear
				not_found_until_now: ∀ i: 1 |..| (index - 1) ¦ queue.sequence [i] /= key
				if_found: Result ⇒ ∃ i: 1 |..| (rear - 1) ¦ queue.sequence [i] = key
			until
				index >= rear ∨ Result
			loop
				if key = queue [index] then
					Result := True
				else
					index := index + 1
				end
			variant
				max - index - if Result then 1 else 0 end
			end
		ensure
			if_found: Result ⇒ ∃ i: 1 |..| (rear - 1) ¦ queue.sequence [i] = key
			not_found: not Result ⇒ ∀ i: 1 |..| (rear - 1) ¦ queue.sequence [i] /= key
		end

	search (key: INTEGER; bn: INTEGER): INTEGER
		local
			index: INTEGER
		do
			from
				index := 1
				Result := -1
			invariant
				index_in_range: 1 <= index ∧ index <= rear ∧ Result /= 0
				not_found: ∀ i: 1 |..| (index - 1) ¦ queue.sequence [i] /= key
				if_in_range_then_correct: 1 <= Result ∧ Result < rear ⇒ queue.sequence [Result] = key
			until
				index >= rear ∨ Result /= -1
			loop
				if key = queue [index] then
					Result := index
				else
					index := index + 1
				end
			variant
				max - index - if Result = -1 then 0 else 1 end
			end
		ensure
			res_not_zero: Result /= 0
			if_in_range_then_correct: 1 <= Result ∧ Result < rear ⇒ queue.sequence [Result] = key
			if_not_found_then_not_exists: Result = -1 ⇒ ∀ i: 1 |..| (rear - 1) ¦ queue.sequence [i] /= key
		end

	is_empty (bn: INTEGER): BOOLEAN
		do
			Result := get_rear = get_front
		ensure
			result_is_correct: Result = (rear = front)
		end

	is_full(bn: INTEGER): BOOLEAN
		do
			if max + 1 = get_rear then
				Result := True
			else
				Result := False
			end
		ensure
			resuld_is_correct: Result = (max + 1 = rear)
		end

	size: INTEGER
		do
			Result := rear - 1
		ensure
			result_is_correct: Result = rear - 1
		end

	get_front: INTEGER
		do
			Result := front
		ensure
			result_is_correct: Result = front
		end

	get_rear: INTEGER
		do
			Result := rear
		ensure
			result_is_correct: Result = rear
		end

	get_elem (i: INTEGER): INTEGER
		require
			i_in_range: 1 <= i ∧ i < rear
		do
			Result := queue [i]
		ensure
			result_is_correct: Result = queue.sequence [i]
		end

invariant
	-- owns_queue: owns = (create {MML_SET [ANY]}.singleton (queue))
	rear_in_range: 1 <= rear ∧ rear <= max + 1
	front_is_front: front = 1
	queue_length: queue.sequence.count = max

end
