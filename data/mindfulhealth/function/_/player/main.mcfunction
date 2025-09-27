#> mindfulhealth:_/player/main
#--------------------
# _/tick
#--------------------

# initially set scores if none set:
execute unless score @s _mindfulhealth.health matches 0.. store result score @s _mindfulhealth.health run data get entity @s Health
execute unless score @s _mindfulhealth.food matches 0.. store result score @s _mindfulhealth.food run data get entity @s foodLevel

# detect health change:
execute unless score @s _mindfulhealth.health = @s _mindfulhealth.dx_health run function mindfulhealth:_/player/health_change/trigger

# is regenerating:
execute if score @s mindfulhealth.recovery_time matches ..0 run function mindfulhealth:_/player/regenerating/main


execute if score @s mindfulhealth.recovery_time matches 1.. run scoreboard players remove @s mindfulhealth.recovery_time 1