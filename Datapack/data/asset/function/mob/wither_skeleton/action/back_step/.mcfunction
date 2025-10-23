#> asset:mob/wither_skeleton/action/back_step/
#
# leap attack process
#
# @within asset:mob/wither_skeleton/

# sfx
    particle minecraft:white_smoke ~ ~ ~ 0.0 0.0 0.0 0.35 6 normal
    playsound minecraft:entity.goat.long_jump hostile @a[distance=..16] ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a[distance=..16] ~ ~ ~ 1 0.5

# set motion
    # xz vector
        execute in world:admin_area facing entity @n[tag=target] feet positioned 0.0 0.0 0.0 rotated ~ 0 run tp 83a-51-1-0-0 ^ ^ ^-1.2
        data modify entity @s Motion set from entity 83a-51-1-0-0 Pos
    # y vector
        data modify entity @s Motion[1] set value 0.4d

# add tag
    tag @s add back_step.doing

# increase attack knockback
    attribute @s minecraft:attack_knockback modifier add back_step.attack_knockback_increase 1.5 add_value