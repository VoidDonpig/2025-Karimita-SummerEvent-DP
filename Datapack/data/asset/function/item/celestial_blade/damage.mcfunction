#> asset:item/celestial_blade/damage
#
# damage
#
# @within asset:item/celestial_blade/do

# sfx
    playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
    playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 2 0
    particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 force @a[distance=..32]

# damage
    function asset:item/celestial_blade/get_data

    function asset:item/magic_damage_scaling
    
    execute store result storage asset: __temp__.damage int 1 run scoreboard players get $damage temporary


    tag @s add this
    tag @e[type=#lib:mob,distance=..8] add victim
    execute as @e[type=#lib:mob,tag=victim] run function asset:item/magic_damage with storage asset: __temp__
    tag @e[type=#lib:mob,tag=victim] remove victim
    tag @s remove this

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary
    data remove storage asset: __temp__