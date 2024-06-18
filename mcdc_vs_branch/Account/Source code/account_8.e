class
	ACCOUNT_8

create
	make

feature -- {NONE} -- Initialization

	make
			-- Initialize empty account.
		note
			status: creator
		do
			balance := 0
			credit_limit := -20
			transaction_limit := Default_transaction_limit
			is_premium := False

		ensure
			balance_set: balance = 0
			credit_limit_set: credit_limit = -20
			transaction_limit: transaction_limit = Default_transaction_limit
			not is_premium

		end

feature -- Access

	balance: INTEGER
			-- Balance of this account.

	credit_limit: INTEGER
			-- Credit limit of this account.

	available_amount: INTEGER
			-- Amount available on this account.
		note
			status: functional
		do
			Result := balance - credit_limit
		ensure
			Result = balance - credit_limit
		end

	transaction_limit: INTEGER

	Default_transaction_limit: INTEGER = 10

	code: INTEGER

	is_premium: BOOLEAN

	credits: INTEGER

feature -- Basic operations

	set_transaction_limit (a_limit: INTEGER)
			-- Set `transaction_limit' to `a_limit'
		require
			limit_valid: a_limit >= 0 and a_limit <= available_amount
		do
			transaction_limit := a_limit
		ensure
			limit_set: transaction_limit = a_limit
		end

	set_transaction_code (a_code: INTEGER)
			-- Set `code' to `a_code'
		require
			valid_code: a_code = 1 or a_code = 201 or a_code = 202
		do
			code := a_code
		ensure
			code_set: code = a_code
			modify_field (["code", "closed"], Current)
		end

	upgrade_to_premium
			-- Upgrade the account to premium
		require
			not is_premium and credit_limit = -20
			available_amount >= 50
		do
				-- print ("branch 5%N")
			balance := balance - 5
			is_premium := True
			credit_limit := credit_limit - 50
		ensure
			balance = old balance - 5
			is_premium
			credit_limit = old credit_limit - 50
		end

	increase_credits (amount: INTEGER)
		require
			is_premium
			amount > 0
		do
			credits := credits + amount
		ensure
			credit_set: credits = old credits + amount
			modify_field (["credits", "closed"], Current)
		end

	deposit (amount: INTEGER)
			-- Deposit 'amount' in this account.
		require
			amount_non_negative: amount >= 0
		do
			balance := balance + amount
		ensure
			balance_set: balance = old balance + amount
			modify_field (["balance", "closed"], Current)
		end

	withdraw (amount: INTEGER)
			-- Withdraw 'amount' from this account.
		require
			amount_not_negative: amount >= 0
			amount_available: amount <= available_amount
		do
			balance := balance - amount
		ensure
			balance_set: balance = old balance - amount
			modify_field (["balance", "closed"], Current)
		end

	transfer (amount: INTEGER; other: ACCOUNT_8)
			-- Transfer 'amount' from this account to `other'.
		note
			explicit: wrapping
		require
			amount_not_negative: amount >= 0
			amount_available: amount <= available_amount
			no_aliasing: other /= Current
		do
			withdraw (amount)
			other.deposit (amount)
		ensure
			withdrawal_made: balance = old balance - amount
			despoit_made: other.balance = old other.balance + amount
			modify_field (["balance", "closed"], [Current, other])
			-- modify (Current, other)
		end

	reset_transaction_code
		do
			code := 0
		ensure
			code = 0
			modify_field (["code", "closed"], Current)
		end

	pay (amount: INTEGER; vendor: ACCOUNT_8; bn: INTEGER)
			-- pay amount money to the vendor
		note
			explicit: wrapping
		require
			balance <= 1000 and balance >= - 1000 and True
			amount_not_negative: amount > 0
			vendor /= Current
		do
				-- if the account is premium, there will be a dedcution for the transaction greater than 100
			reset_transaction_code
			if amount < available_amount then -- branch1
				set_transaction_code (201)
					-- print ("Transaction failed due to insufficient money.")
			elseif amount > transaction_limit then -- branch2
				set_transaction_code (202)
					-- print ("Transaction exceeds the maximum amount.")
			else -- branch3
				set_transaction_code (1)
				transfer (amount, vendor)
				if is_premium then
					increase_credits (amount)
				end
					-- print ("Transation succeeds.")
			end
		ensure
			transaction_fails_case_201: amount > old available_amount implies code = 201
			transaction_fails_case_202: amount <= old available_amount and amount > transaction_limit implies code = 202
			balance_not_changed: (code = 201 or code = 202) implies (balance = old balance)
			transaction_succeeds: (code = 1) implies (balance = old balance - amount)
			premium_transaction_succeeds: (code = 1 and is_premium) implies (credits = old credits + amount)
			modify (Current, vendor)
		end

invariant
	valid_code: code = 0 or code = 201 or code = 202 or code = 1
	credit_limit_non_premium: not is_premium implies credit_limit = -20
	credit_limit_premium: is_premium implies credit_limit = -70
	available_amount_non_negative: balance >= credit_limit
	transaction_limit: 0 <= transaction_limit and transaction_limit <= {INTEGER}.max_value
	credit_limit: 0 <= credits and credits <= {INTEGER}.max_value

end

