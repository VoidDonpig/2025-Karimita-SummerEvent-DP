#> asset:mob/wither/action/curse_of_wither/apply_curse
#
# apply curse
#
# @within asset:mob/wither/action/curse_of_wither/

# apply
    tag @s add wither_cursed
    effect give @s minecraft:blindness 1 255 true
    particle minecraft:dust_color_transition{from_color:[0.549,0.549,0.549],scale:1,to_color:[0.000,0.000,0.000]} ~ ~1.2 ~ 1.0 1.0 1.0 4 1024 force @a
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 0.5 0