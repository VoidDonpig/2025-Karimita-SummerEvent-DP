#> asset:object/shadow_strike/
#
# shadow_strike
#
# @within asset:

# tag entities
    tag @s add this
    execute as @e[type=#lib:mob] if score @s mob.id = @n[type=marker,tag=this] mob.id run tag @s add shadow_strike.victim
    execute as @a if score @s player.id = @n[type=marker,tag=this] player.id run tag @s add shadow_strike.attacker
    tag @s remove this

# particle
    function asset:object/shadow_strike/particle
    execute at @n[tag=shadow_strike.victim] run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..16] ~ ~ ~ 0.2 2

# damage
    execute store result storage asset: __temp__.damage int 1 run scoreboard players get @s shadow_strike_damage

    execute as @n[tag=shadow_strike.victim] at @s run function asset:object/shadow_strike/damage with storage asset: __temp__

    scoreboard players remove @s shadow_strike_count 1

    execute if score @s shadow_strike_count matches ..0 run kill @s

# reset
    data remove storage asset: __temp__
    tag @e[tag=shadow_strike.victim] remove shadow_strike.victim
    tag @a[tag=shadow_strike.attacker] remove shadow_strike.attacker