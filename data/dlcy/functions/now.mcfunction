#> dlcy:now

function realtime:get
data modify storage dlcy: Now[0] set from storage realtime: now.hour 
data modify storage dlcy: Now[1] set from storage realtime: now.minute
data modify storage dlcy: Now[2] set from storage realtime: now.second 
function dlcy:timeset

