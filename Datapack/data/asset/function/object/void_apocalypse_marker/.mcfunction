#> asset:object/void_apocalypse_marker/
#
# tick
#
# @within asset:

# timer
    scoreboard players add @s asset_timer.1 1

# get victim
    function asset:object/void_apocalypse_marker/repeat_3
    execute positioned ~-4.5 ~ ~-4.5 as @e[tag=victim] unless entity @s[dx=8,dy=255,dz=8] run tag @s remove victim

# spawn sound
    execute if score @s asset_timer.1 matches 1 run playsound item.flintandsteel.use hostile @a ~ ~ ~ 1 0.5

# caution
    execute if score @s asset_timer.1 matches ..99 run function asset:object/void_apocalypse_marker/caution

# deadly damage
    # sfx
        execute if score @s asset_timer.1 matches 100.. run function asset:object/void_apocalypse_marker/flame_sfx
    # damage
        execute if score @s asset_timer.1 matches 100.. as @e[tag=victim] run damage @s 5 magic

# kill
    kill @s[scores={asset_timer.1=200..}]