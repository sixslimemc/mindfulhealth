#> mindfulhealth:_/player/health_change/trigger
#--------------------
# ../main
#--------------------

# get *health.damage (negative means healing)
scoreboard players operation *x _mindfulhealth = @s _mindfulhealth.dx_health
scoreboard players operation *x _mindfulhealth -= @s _mindfulhealth.health
scoreboard players operation *health.damage _mindfulhealth = *x _mindfulhealth

# set dx health:
scoreboard players operation @s _mindfulhealth.dx_health = @s _mindfulhealth.health

# return if its not damage:
execute if score *health.damage _mindfulhealth matches ..0 run return 0


# *x = recovery add amount:
scoreboard players set *prec _mindfulhealth 100
scoreboard players operation *x _mindfulhealth = @s _mindfulhealth.food
execute if score *x _mindfulhealth > *cache.recovery.hunger_scale.max _mindfulhealth run scoreboard players operation *x _mindfulhealth = *cache.recovery.hunger_scale.max _mindfulhealth
execute if score *x _mindfulhealth < *cache.recovery.hunger_scale.min _mindfulhealth run scoreboard players operation *x _mindfulhealth = *cache.recovery.hunger_scale.min _mindfulhealth
scoreboard players operation *y _mindfulhealth = *cache.recovery.hunger_scale.max _mindfulhealth
scoreboard players operation *y _mindfulhealth -= *x _mindfulhealth
scoreboard players operation *y _mindfulhealth *= *prec _mindfulhealth
scoreboard players operation *y _mindfulhealth /= *cache.recovery.hunger_scale.range _mindfulhealth
scoreboard players operation *x _mindfulhealth = *cache.recovery.ticks_per_damage.range _mindfulhealth
scoreboard players operation *x _mindfulhealth *= *y _mindfulhealth
scoreboard players operation *x _mindfulhealth /= *prec _mindfulhealth
scoreboard players operation *x _mindfulhealth += *cache.recovery.ticks_per_damage.min _mindfulhealth
scoreboard players operation *x _mindfulhealth *= *health.damage _mindfulhealth

# DEBUG:
tellraw @a ["recovery add: ", {'score':{'name':'*x', 'objective':'_mindfulhealth'}}]

# add to recovery time:
scoreboard players operation @s mindfulhealth.recovery_time += *x _mindfulhealth
execute if score @s mindfulhealth.recovery_time > *cache.recovery.max_ticks _mindfulhealth run scoreboard players operation @s mindfulhealth.recovery_time = *cache.recovery.max_ticks _mindfulhealth

scoreboard players reset *health.damage _mindfulhealth