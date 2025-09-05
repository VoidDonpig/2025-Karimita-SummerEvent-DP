#> asset:object/wither_healing_soul/
#
# tick
#
# @within asset:

# tp to nearest wither
    execute facing entity @n[type=wither,tag=!special_mob,tag=!dead] eyes run tp @s ^ ^ ^1.0

# heal wither
    tag @s add this
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=wither,tag=!special_mob,tag=!dead,dx=0] run function asset:object/wither_healing_soul/heal
    tag @s remove this

# sfx
    particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 128 force @a
    particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.1 8 force @a

# autokill
    scoreboard players add @s autokill_timer 1
    execute if score @s autokill_timer matches 600.. run function asset:object/wither_healing_soul/dead