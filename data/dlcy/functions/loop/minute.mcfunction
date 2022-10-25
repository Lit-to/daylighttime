#> dlcy:loop/minute
#分は処理せず、tickで処理
scoreboard players set 60 clock_time 60
scoreboard players set 1200 clock_time 1200
scoreboard players operation 60second clock_time *= 1200 clock_time
scoreboard players operation second clock_time += 60second clock_time

