#> asset:item/ultimate_wither_sword/damage
#
# damage effect
#
# @within asset:item/ultimate_wither_sword/do

# sfx
    playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
    particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 force @a[distance=..32]

# damage
    scoreboard players set $damage temporary 50
    scoreboard players set $damage_scaling temporary 30

    function asset:item/magic_damage_scaling
    
    execute store result storage asset: __temp__.damage int 1 run scoreboard players get $damage temporary


    tag @s add this
    tag @e[type=#lib:mob,distance=..6] add victim
    execute as @e[type=#lib:mob,tag=victim] run function asset:item/magic_damage with storage asset: __temp__
    tag @e[type=#lib:mob,tag=victim] remove victim
    tag @s remove this

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary
    data remove storage asset: __temp__