#> asset:mob/blaze/action/scorched_skull/skull
#
# fireball
#
# @within asset:mob/blaze/action/scorched_skull/

# summon fireball
    tag @s add this
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^1.6
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    execute summon wither_skull run function asset:mob/blaze/action/scorched_skull/set_data
    
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1

# reset
    tag @s remove this