#> mindfulhealth:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage mindfulhealth:_ cache

execute store result score *cache.recovery.max_ticks _mindfulhealth run data get storage mindfulhealth:config health.recovery.max_ticks