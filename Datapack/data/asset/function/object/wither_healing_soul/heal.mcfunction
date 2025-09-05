#> asset:object/wither_healing_soul/heal
#
# heal the wither
#
# @within asset:object/wither_healing_soul/

# healing
    scoreboard players add @s mob.health 100
    execute if score @s mob.health matches 6751.. run scoreboard players set @s mob.health 6750

# update health
    function health_display:update

# sfx
    particle heart ~ ~2.8 ~ 0.0 0.0 0.0 0 1 force

# kill marker
    execute as @n[tag=this] run function asset:object/wither_healing_soul/dead