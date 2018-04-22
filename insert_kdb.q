n:3000; timerange:2302D; freq:0D00:30; calls:1
fcn:n*fc:`long$timerange%freq

sample:([]
    trade_time:fcn#(2018.04.20 - timerange)+freq*til fc; 
    code:raze fc#'key startcpu
    )
sample:update `g#code from `trade_time xasc update open:{rand each "f"$x}[code] by code from sample
