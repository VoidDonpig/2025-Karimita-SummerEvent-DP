#> asset:mob/wither_skeleton/action/calcium_toughness/
#
# become toughness bone
#
# @within asset:mob/wither_skeleton/

# sfx
    particle happy_villager ~ ~1.0 ~ 0.4 0.8 0.4 0 16 normal
    playsound block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 2

# effect
    effect give @s resistance infinite 0
    effect give @s fire_resistance infinite
    effect give @s strength infinite 0