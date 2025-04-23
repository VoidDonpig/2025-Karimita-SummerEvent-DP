#> asset:mob/skeleton/action/swap_weapon/check
#
# check
#
# @within asset:mob/skeleton/tick/have_target

# get hand item id
    data modify storage asset:mob __temp__.id set from entity @s equipment.mainhand.id

# check having correct weapon
    # if melee mode
        execute if entity @s[tag=mode.melee] if data storage asset:mob {__temp__:{id:"minecraft:bow"}} run function asset:mob/skeleton/action/swap_weapon/melee
    # if ranged mode
        execute if entity @s[tag=mode.ranged] unless data storage asset:mob {__temp__:{id:"minecraft:bow"}} run function asset:mob/skeleton/action/swap_weapon/ranged

# reset
    data remove storage asset:mob __temp__