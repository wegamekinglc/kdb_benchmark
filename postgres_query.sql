select count(*) from sample;
select code, max(open) from sample group by code;
select trade_time, open from sample where code in (1, 10, 200, 1000);
select trade_time, code, open from sample where trade_time between '2017-04-19' and  '2017-05-19';
select trade_time, code, avg(open) over (partition by code order by trade_time rows between 4 preceding and current row) from sample where  trade_time between '2017-04-19' and  '2018-04-19';