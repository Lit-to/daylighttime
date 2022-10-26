#> dlcy:load
#完成時間 2022-10-26 07:16:04
gamerule doDaylightCycle false
time set 18000
function realtime:get 
scoreboard objectives remove clock_time
scoreboard objectives add clock_time dummy
scoreboard objectives remove clock_board
scoreboard objectives add clock_board dummy {"text":"現在時刻"}
scoreboard players set now clock_time 0
execute store result score hour clock_time run data get storage realtime: now.hour
execute store result score minute clock_time run data get storage realtime: now.minute
execute store result score second clock_time run data get storage realtime: now.second
execute if score hour clock_time matches 1.. run function dlcy:loop/hour
execute if score minute clock_time matches 1.. run function dlcy:loop/minute
execute if score second clock_time matches 7200.. run function dlcy:loop/7200
execute if score second clock_time matches 720.. run function dlcy:loop/720
execute if score second clock_time matches 72.. run function dlcy:loop/72
execute if score second clock_time matches 1.. run scoreboard players operation now clock_time += second clock_time
execute store result score hour clock_time run data get storage realtime: now.hour
execute store result score minute clock_time run data get storage realtime: now.minute
execute store result score second clock_time run data get storage realtime: now.second



