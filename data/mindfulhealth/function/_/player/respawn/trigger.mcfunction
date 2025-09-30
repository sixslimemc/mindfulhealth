#> mindfulhealth:_/player/respawn/trigger
#--------------------
# _/subscriber/ideath/respawned
#--------------------

scoreboard players set @s mindfulhealth.recovery_time 0
scoreboard players set @s mindfulhealth.regeneration_delay 0

scoreboard players operation @s _mindfulhealth.dx_health = @s _mindfulhealth.health