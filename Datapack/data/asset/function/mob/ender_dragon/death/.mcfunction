#> asset:mob/ender_dragon/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# sfx
    execute if score @s death_timer.1 matches 1 run tp @s ~ ~ ~
    execute if score @s death_timer.1 matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:253,duration:1}]}}