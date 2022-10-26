#> dlcy:load
#完成時間 2022-10-26 07:16:04
#declare storage dlcy:
data modify storage dlcy: Now set value [0,0,0]
scoreboard objectives remove clock_time
scoreboard objectives add clock_time dummy
scoreboard objectives remove clock_board
scoreboard objectives add clock_board dummy {"text":"現在時刻"}
function realtime:get
data modify storage dlcy: Now[0] set from storage realtime: now.hour 
data modify storage dlcy: Now[1] set from storage realtime: now.minute
data modify storage dlcy: Now[2] set from storage realtime: now.second 
function dlcy:timeset

