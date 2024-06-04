select sum(amount) as "transaction may", bank.name
	from transaction 
	inner join bank 
	on transaction.bank_id = bank.bank_code
	where transaction_date between '2024-05-01' and '2024-05-31'
	and bank_id = '1'
group by bank.name