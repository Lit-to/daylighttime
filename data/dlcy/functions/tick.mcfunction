#> dlcy:tick
scoreboard players add now clock_time 1
execute if score now clock_time matches 72 run time add 1
execute if score now clock_time matches 72 run scoreboard players set now clock_time 0
scoreboard players add tick clock_time 1
execute if score tick clock_time matches 20 run function dlcy:clear/tick
execute if score second clock_time matches 60 run function dlcy:clear/second
execute if score minute clock_time matches 60 run function dlcy:clear/minute
execute if score hour clock_time matches 24 run function dlcy:clear/hour

scoreboard players operation 時 clock_board = hour clock_time
scoreboard players operation 分 clock_board = minute clock_time
scoreboard players operation 秒 clock_board = second clock_time
