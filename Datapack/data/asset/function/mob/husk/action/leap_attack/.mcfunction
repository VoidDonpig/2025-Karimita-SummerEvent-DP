#> asset:mob/husk/action/leap_attack/
#
# leap attack process
#
# @within asset:mob/husk/

# sfx
    particle minecraft:white_smoke ~ ~ ~ 0.0 0.0 0.0 0.35 6 force @a[distance=..32]
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5

# set motion
    # xz vector
        execute facing entity @n[tag=target] feet in world:admin_area positioned 0.0 0.0 0.0 rotated ~ 0 run tp 83a-51-1-0-0 ^ ^ ^1.2
        data modify entity @s Motion set from entity 83a-51-1-0-0 Pos
    # y vector
        data modify entity @s Motion[1] set value 0.4d

# add tag
    tag @s add leap_attack.doing

# increase attack knockback
    attribute @s minecraft:attack_knockback modifier add leap_attack.attack_knockback_increase 1.5 add_value