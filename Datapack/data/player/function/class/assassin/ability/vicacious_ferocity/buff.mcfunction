#> player:class/assassin/ability/vicacious_ferocity/buff
#
# buff process
#
# @within player:class/assassin/ability/vicacious_ferocity/mana_check

# damage
    execute store result storage player: __temp__.damage float 0.01 run scoreboard players get $needed_health temporary
    data modify storage player: __temp__.damage set string storage player: __temp__.damage 0 -1
    function player:class/assassin/ability/vicacious_ferocity/damage with storage player: __temp__
    data remove storage player: __temp__

# add cooltime
    scoreboard players set @s vicacious_ferocity_cooltime 100

# add timer
    scoreboard players set @s vicacious_ferocity_timer 100

# sfx
    playsound entity.ghast.scream player @a[distance=..16] ~ ~ ~ 1 2.0 0
    playsound entity.ghast.scream player @a[distance=..16] ~ ~ ~ 1 1.2 0
    playsound entity.ghast.scream player @a[distance=..16] ~ ~ ~ 1 1.1 0
    playsound entity.ghast.scream player @a[distance=..16] ~ ~ ~ 1 1.0 0
    playsound entity.zombie_villager.cure player @a[distance=..16] ~ ~ ~ 1 2 0