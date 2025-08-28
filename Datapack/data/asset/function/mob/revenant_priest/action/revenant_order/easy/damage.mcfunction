#> asset:mob/revenant_priest/action/revenant_order/easy/damage
#
# timer
#
# @within asset:mob/revenant_priest/action/revenant_order/easy/attack

# damage
    damage @s 20 magic

# playsound
    playsound block.anvil.hit hostile @s ~ ~ ~ 1 0.5 0
    playsound minecraft:entity.zombie.break_wooden_door hostile @s ~ ~ ~ 1 0.5 0

# effect
    effect give @s blindness 2 1 true

# particle
    particle infested ~ ~1.0 ~ 0.4 0.4 0.4 0.2 32 force @a[distance=..32]
    particle dust_color_transition{from_color:[0.2,0.4,0.1],scale:2,to_color:[0.2,0.2,0.2]} ~ ~10 ~ 0.2 5 0.2 1 128 force @a[distance=..32]

# add tag
    tag @s add impel_failed