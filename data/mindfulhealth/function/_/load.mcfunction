#> mindfulhealth:_/load
#--------------------
# @LOAD
#--------------------

gamerule naturalRegeneration false

scoreboard objectives add mindfulhealth.recovery_time dummy
scoreboard objectives add mindfulhealth.regeneration_delay dummy

scoreboard objectives add _mindfulhealth dummy

scoreboard objectives add _mindfulhealth.dx_health dummy
scoreboard objectives add _mindfulhealth.health health
scoreboard objectives add _mindfulhealth.food food

# DEBUG
scoreboard players reset *init _mindfulhealth

execute unless score *init _mindfulhealth matches 1 run function mindfulhealth:_/init
scoreboard players set *init _mindfulhealth 1
