#> asset:mob/wither/action/rapid_skull_shot/summon
#
# summon skull
#
# @within asset:mob/wither/action/rapid_skull_shot/

# set data
    $summon minecraft:wither_skull ~ ~2.4 ~ $(__temp__)
    execute as @n[type=minecraft:wither_skull,tag=not_init,tag=rapid_wither_skull_shot] run scoreboard players set @s autokill_timer 60
    execute as @n[type=minecraft:wither_skull,tag=not_init,tag=rapid_wither_skull_shot] run tag @s remove not_init