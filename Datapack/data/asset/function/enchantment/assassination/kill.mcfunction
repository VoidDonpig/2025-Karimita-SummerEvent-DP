#> asset:enchantment/assassination/kill
#
# kill
#
# @within asset:enchantment/assassination/
#         asset:enchantment/assassination/assassin

# sfx
    playsound entity.zombie.break_wooden_door player @s ~ ~ ~ 2.0 1.0 1.0
    playsound entity.turtle.egg_break player @s ~ ~ ~ 2.0 0.5 1.0
    playsound entity.turtle.egg_break player @s ~ ~ ~ 2.0 0.5 1.0
    playsound entity.turtle.egg_break player @s ~ ~ ~ 2.0 0.5 1.0
    playsound entity.turtle.egg_break player @s ~ ~ ~ 2.0 0.5 1.0
    particle block{block_state:"redstone_block"} ~ ~1.0 ~ 0.4 1.0 0.4 0 128 force @a[distance=..32]

# damage
    kill @n[tag=mob.victim]