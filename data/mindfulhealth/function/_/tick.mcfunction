#> mindfulhealth:_/tick
#--------------------
# @TICK
#--------------------
schedule function mindfulhealth:_/tick 1t

execute as @a[tag=!mindfulhealth.exempt] at @s run function mindfulhealth:_/player/main