#> asset:object/sorrow_aura/
#
# tick
#
# @within asset:

# add timer
    scoreboard players add @s asset_timer.1 1

# tp
    execute facing entity @p[distance=..64,predicate=!player:is_player_exception] feet positioned ^ ^ ^1.0 rotated as @s positioned ^ ^ ^1.2 facing entity @s feet facing ^ ^ ^-1.0 positioned as @s run tp @s ^ ^ ^0.8

# particle
    particle smoke ~ ~ ~ 1.5 1.5 1.5 0 128 normal
    particle soul ~ ~ ~ 1.5 1.5 1.5 0 16 normal
    playsound minecraft:particle.soul_escape hostile @a[distance=..16] ~ ~ ~ 8 0.5 0

# effect
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @a[dx=4,dy=4,dz=4] run function asset:object/sorrow_aura/effect

# kill
    kill @s[scores={asset_timer.1=100}]