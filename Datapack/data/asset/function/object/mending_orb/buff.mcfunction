#> asset:object/healing_orb/buff
#
# apply buff
#
# @within asset:object/healing_orb/

# buff
    effect give @s[predicate=!lib:effect/regeneration_1] minecraft:regeneration 10 1 false

# sfx
    particle minecraft:dust{color:[0.039,0.714,1.000],scale:1} ~ ~ ~ 0.2 0.0 0.2 0 8 normal