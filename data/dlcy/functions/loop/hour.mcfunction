#> dlcy:loop/hour
time add 1000
scoreboard players remove hour clock_time 1
execute if score hour clock_time matches 1.. run function dlcy:loop/hour
