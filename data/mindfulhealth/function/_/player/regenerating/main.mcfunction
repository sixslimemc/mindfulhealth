#> mindfulhealth:_/player/regenerating/main
#--------------------
# ../main
#--------------------

execute unless score @s mindfulhealth.regeneration_delay matches 1.. run function mindfulhealth:_/player/regenerating/regen

execute if score @s mindfulhealth.regeneration_delay matches 1.. run scoreboard players remove @s mindfulhealth.regeneration_delay 1