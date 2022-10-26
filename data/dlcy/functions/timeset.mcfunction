#> dlcy:timeset


gamerule doDaylightCycle false
time set 18000

scoreboard players set now clock_time 0
execute store result score hour clock_time run data get storage dlcy: Now[0]
execute store result score minute clock_time run data get storage dlcy: Now[1]
execute store result score second clock_time run data get storage dlcy: Now[2]
execute if score hour clock_time matches 1.. run function dlcy:loop/hour
execute if score minute clock_time matches 1.. run function dlcy:loop/minute
execute if score second clock_time matches 7200.. run function dlcy:loop/7200
execute if score second clock_time matches 720.. run function dlcy:loop/720
execute if score second clock_time matches 72.. run function dlcy:loop/72
execute if score second clock_time matches 1.. run scoreboard players operation now clock_time += second clock_time
execute store result score hour clock_time run data get storage dlcy: Now[0]
execute store result score minute clock_time run data get storage dlcy: Now[1]
execute store result score second clock_time run data get storage dlcy: Now[2]



