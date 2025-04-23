#> asset:object/healing_orb/buff
#
# apply buff
#
# @within asset:object/healing_orb/

# buff
    effect give @s[predicate=!lib:effect/regeneration_0] minecraft:regeneration 10 0 false

# sfx
     particle minecraft:happy_villager ~ ~ ~ 0.2 0.0 0.2 0 8 force @a