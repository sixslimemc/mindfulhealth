#> mindfulhealth:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage mindfulhealth:_ cache

# [ recovery ]
execute store result score *cache.recovery.max_ticks _mindfulhealth run data get storage mindfulhealth:config health.recovery.max_ticks

execute store result score *cache.recovery.hunger_scale.min _mindfulhealth run data get storage mindfulhealth:config health.recovery.hunger_scale.min
execute store result score *cache.recovery.hunger_scale.max _mindfulhealth run data get storage mindfulhealth:config health.recovery.hunger_scale.max

scoreboard players operation *cache.recovery.hunger_scale.range _mindfulhealth = *cache.recovery.hunger_scale.max _mindfulhealth
scoreboard players operation *cache.recovery.hunger_scale.range _mindfulhealth -= *cache.recovery.hunger_scale.min _mindfulhealth

execute store result score *cache.recovery.ticks_per_damage.min _mindfulhealth run data get storage mindfulhealth:config health.recovery.ticks_per_damage.min
execute store result score *cache.recovery.ticks_per_damage.max _mindfulhealth run data get storage mindfulhealth:config health.recovery.ticks_per_damage.max

scoreboard players operation *cache.recovery.ticks_per_damage.range _mindfulhealth = *cache.recovery.ticks_per_damage.max _mindfulhealth
scoreboard players operation *cache.recovery.ticks_per_damage.range _mindfulhealth -= *cache.recovery.ticks_per_damage.min _mindfulhealth

execute store result score *cache.recovery.regeneration.interval _mindfulhealth run data get storage mindfulhealth:config health.recovery.regeneration.interval
execute store result score *cache.recovery.regeneration.amount _mindfulhealth run data get storage mindfulhealth:config health.recovery.regeneration.amount

execute store result score *cache.recovery.sleep_restore_percent _mindfulhealth run data get storage mindfulhealth:config health.recovery.sleep_restore_percent 1000
