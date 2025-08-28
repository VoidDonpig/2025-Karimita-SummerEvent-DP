#> asset:mob/revenant_priest/action/revenant_order/easy/attack
#
# timer
#
# @within asset:mob/revenant_priest/action/revenant_order/easy/timer

# add damage
    # sneak
        execute if score @s ai_counter.2 matches 0 as @a[distance=..64,predicate=!lib:is_sneaking] at @s run function asset:mob/revenant_priest/action/revenant_order/easy/damage
    # jump
        execute if score @s ai_counter.2 matches 1 as @a[distance=..64,predicate=lib:is_on_ground] at @s run function asset:mob/revenant_priest/action/revenant_order/easy/damage
    # look up
        execute if score @s ai_counter.2 matches 2 as @a[distance=..64,x_rotation=-60..90] at @s run function asset:mob/revenant_priest/action/revenant_order/easy/damage
    # look down
        execute if score @s ai_counter.2 matches 3 as @a[distance=..64,x_rotation=-90..60] at @s run function asset:mob/revenant_priest/action/revenant_order/easy/damage

# success sound
    execute as @a[distance=..64,tag=!impel_failed] at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~ 1 1 0

# reset
    tag @a[tag=impel_failed] remove impel_failed