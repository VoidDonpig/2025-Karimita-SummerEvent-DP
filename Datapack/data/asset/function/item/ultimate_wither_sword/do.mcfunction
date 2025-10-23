#> asset:item/ultimate_wither_sword/do
#
# do
#
# @within asset:item/ultimate_wither_sword/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# sfx
    playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 1 1 0
    particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 normal

# damage
    function asset:item/ultimate_wither_sword/get_data

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