#> asset:object/ferocity/
#
# ferocity
#
# @within asset:

# tag entities
    tag @s add this
    execute as @e[type=#lib:mob] if score @s mob.id = @n[type=marker,tag=this] mob.id run tag @s add ferocity.victim
    execute as @a if score @s player.id = @n[type=marker,tag=this] player.id run tag @s add ferocity.attacker
    tag @s remove this

# particle
    function asset:object/ferocity/particle
    execute at @n[tag=ferocity.victim] run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..16] ~ ~ ~ 0.2 2

# damage
    execute store result storage asset: __temp__.damage int 1 run scoreboard players get @s ferocity_damage

    execute as @n[tag=ferocity.victim] at @s run function asset:object/ferocity/damage with storage asset: __temp__
    scoreboard players remove @s ferocity_count 1

    execute if score @s ferocity_count matches ..0 run kill @s

# reset
    data remove storage asset: __temp__
    tag @e[tag=ferocity.victim] remove ferocity.victim
    tag @a[tag=ferocity.attacker] remove ferocity.attacker