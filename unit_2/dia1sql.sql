use bank;

select * from trans;

select * from bank.trans;
-- Comentario
select trans_id, account_id, date, type
from bank.trans;

-- to select some columns instead of all
select bank.trans.trans_id, bank.trans.account_id,
bank.trans.date, bank.trans.type
from bank.trans;

-- aliasing columns
select trans_id as Transaction_ID, account_id as Account_ID, 
ate as Date, type as Type_of_account
from bank.trans;

-- aliasing columns and table
select bt.trans_id as Transaction_ID, bt.account_id as
Account_ID, bt.date as Date, bt.type as Type
from bank.trans as bt;

-- limiting the number of rows in the results
select bt.trans_id as Transaction_ID, bt.account_id as 
Account_ID, bt.date as Date, bt.type as Type
from bank.trans as bt
limit 10;

select count(*) from bank.trans;

select "hello world";
select distinct type from bank.card;
select A2 as district_name from bank.district;

select distinct A2 as district_name, A3 as region_name
from bank.district
order by A2 asc
limit 30;

select *, amount-payments as balance
from bank,loan;

select loan_id, account_id, date, duration, status, (amount-payments)/1000 as 'balance in Thousands'
from bank.loans;

select duration%2
from bank.loan

select 10%3;

select * from bank.loan
where status in ('B', 'b')

select * from bank.loan
where status in ('B', 'b') and amount > 100000;

select * from bank.loan
limit 10;

select * from bank.account
order by account_id desc
limit 10;

#2
select *
from bank.loan
where status = 'B' and amount > 100000;

select *
from bank.loan
where status = 'B' and amount > 100000 and durantion <= 24;

select *
from bank.loan
where status ('B' , 'D');

select *
from bank.order
where not k_symbol = 'SIPO' and not amount < 1000;

# 3
 select * from bank.card
 where issued > 900000 and type = 'junior';
 
 select * from bank.trans
 where type='VYDAJ' and (operation='VKLAD' or operation='VYBER')
 limit 10;

select loan_id, account_id, (amount - payments) as debt
from bank.loan
where status = 'B' and (amount - payments) > 1000;








