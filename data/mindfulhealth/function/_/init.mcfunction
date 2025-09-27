#> mindfulhealth:_/init
#--------------------
# _/load
#--------------------
# called when first installed.

# [ health ]
data remove storage mindfulhealth:config health

data modify storage mindfulhealth:config health.recovery.ticks_per_damage.min set value 600
data modify storage mindfulhealth:config health.recovery.ticks_per_damage.max set value 1800

data modify storage mindfulhealth:config health.recovery.hunger_scale.min set value 0
data modify storage mindfulhealth:config health.recovery.hunger_scale.max set value 20

data modify storage mindfulhealth:config health.recovery.max_ticks set value 12000

data modify storage mindfulhealth:config health.recovery.regeneration.interval_ticks set value 200
data modify storage mindfulhealth:config health.recovery.regeneration.amount set value 1

data modify storage mindfulhealth:config health.recovery.sleep_restore_percent set value 1f
