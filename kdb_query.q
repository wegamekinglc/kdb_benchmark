count sample;
select max_open:max open by code from sample;
select trade_time open from sample where (code = 1) or (code = 10) or (code = 200) or (code = 1000);
select trade_time, code, open from sample where trade_time within (2017.04.19;2017.05.19);
ungroup select trade_time, code, mavg_open:5 mavg open by code from sample where trade_time within (2017.04.19;2018.04.19);