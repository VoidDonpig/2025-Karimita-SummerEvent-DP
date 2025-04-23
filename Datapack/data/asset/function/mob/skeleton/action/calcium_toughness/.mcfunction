#> asset:mob/skeleton/action/calcium_toughness/
#
# become toughness bone
#
# @within asset:mob/skeleton/

# sfx
    particle happy_villager ~ ~1.0 ~ 0.4 0.8 0.4 0 16 force @a[distance=..32]
    playsound block.anvil.land hostile @a ~ ~ ~ 1 2

# effect
    effect give @s resistance infinite 0
    effect give @s fire_resistance infinite
    effect give @s strength infinite 0