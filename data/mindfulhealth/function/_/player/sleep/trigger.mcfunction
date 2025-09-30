#> mindfulhealth:_/player/sleep/trigger
#--------------------
# _/subscriber/islept/slept
#--------------------

scoreboard players set *x _mindfulhealth 1000
scoreboard players operation *x _mindfulhealth -= *cache.recovery.sleep_restore_percent _mindfulhealth

scoreboard players operation @s mindfulhealth.recovery_time *= *x _mindfulhealth
scoreboard players operation @s mindfulhealth.recovery_time /= *1000 _mindfulhealth