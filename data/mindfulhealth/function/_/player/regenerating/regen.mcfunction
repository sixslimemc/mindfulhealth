#> mindfulhealth:_/player/regenerating/main
#--------------------
# ../main
#--------------------

# return early if at max health:
execute store result score *x _mindfulhealth run attribute @s minecraft:max_health get
execute if score @s _mindfulhealth.health >= *x _mindfulhealth run return 0

# heal:
execute store result storage eotheal:in heal.amount float 1 run scoreboard players get *cache.recovery.regeneration.amount _mindfulhealth
function eotheal:heal

scoreboard players operation @s mindfulhealth.regeneration_delay = *cache.recovery.regeneration.interval _mindfulhealth

