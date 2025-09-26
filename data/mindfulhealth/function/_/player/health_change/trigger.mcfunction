#> mindfulhealth:_/player/health_change/trigger
#--------------------
# ../main
#--------------------

# *x = health difference (positive means damage)
scoreboard players operation *x _mindfulhealth = @s _mindfulhealth.dx_health
scoreboard players operation *x _mindfulhealth -= @s _mindfulhealth.health

scoreboard players operation @s _mindfulhealth.dx_health = @s _mindfulhealth.health

# return if its not damage:
execute if score *x _mindfulhealth matches ..0 run return 0