#> asset:mob/ender_dragon/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# add value
    execute if score @s death_timer.1 matches 1 run data modify storage asset:mob info.ender_dragon_already_killed set value 1b

# kill zealots
    execute if score @s death_timer.1 matches 1 as @e[type=enderman,tag=dragonic_fanatic] run function lib:vanish/
    execute if score @s death_timer.1 matches 1 as @e[type=zombie,tag=dragon_knight] run function lib:vanish/

# dialogue
    execute if score @s death_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "グオォォォォォ...","color": "red"}]
    execute if score @s death_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "我は間もなく滅びる...","color": "red"}]
    execute if score @s death_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "だが、努々忘れるな、","color": "red"}]
    execute if score @s death_timer.1 matches 160 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "全ては虚空に帰する運命なのだ。","color": "red"}]

# sfx
    execute if score @s death_timer.1 matches 1.. run tp @s ~ ~ ~
    execute if score @s death_timer.1 matches 1.. run summon area_effect_cloud ~ ~2 ~ {Duration:6,Age:4,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:253,duration:1}]},custom_particle:{type:witch}}