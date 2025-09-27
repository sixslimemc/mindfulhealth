#> mindfulhealth:_/player/main
#--------------------
# _/tick
#--------------------

execute unless score @s _mindfulhealth.health matches 0.. store result score @s _mindfulhealth.health run data get entity @s Health
execute unless score @s _mindfulhealth.food matches 0.. store result score @s _mindfulhealth.food run data get entity @s foodLevel

execute unless score @s _mindfulhealth.health = @s _mindfulhealth.dx_health run function mindfulhealth:_/player/health_change/trigger