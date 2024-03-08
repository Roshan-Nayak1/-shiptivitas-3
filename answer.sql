-- TYPE YOUR SQL QUERY BELOW
-- 2018-06-02 is the day the feature changes and in unix epoch time is equal to 1527897600

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
select date(login_timestamp, 'unixepoch') as login_date, 
        count(distinct user_id) user_count 
from login_history 
where login_timestamp < 1527897600 
group by login_date;

select date(login_timestamp, 'unixepoch') as login_date, 
        count(distinct user_id) user_count 
from login_history 
where login_timestamp >= 1527897600 
group by login_date;


-- PART 2: Create a SQL query that indicates the number of status changes by card

select count(distinct id), cardID 
from card_change_history 
where oldStatus <> newStatus 
group by cardID;



