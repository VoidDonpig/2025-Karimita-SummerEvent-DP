#> asset:mob/the_ancestral_dragon/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# kill zealots
    execute if score @s death_timer.1 matches 1 as @e[type=enderman,tag=dragonic_fanatic] run function lib:vanish/
    execute if score @s death_timer.1 matches 1 as @e[type=zombie,tag=dragon_knight] run function lib:vanish/

# sfx
    execute if score @s death_timer.1 matches 1.. run tp @s ~ ~ ~
    execute if score @s death_timer.1 matches 1.. run summon area_effect_cloud ~ ~2 ~ {Duration:6,Age:4,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:253,duration:1}]}}