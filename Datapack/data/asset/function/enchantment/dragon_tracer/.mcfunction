#> asset:enchantment/dragon_tracer/
#
# set data
#
# @within player:trigger/shot_arrow/

# add data
    execute store result entity @s data.asset.dragon_tracing_range int 2 run data get entity @s weapon.components."minecraft:enchantments"."asset:dragon_tracer"
    data modify entity @s data.asset.id set value arrow_dragon_tracer
    tag @s add asset
    tag @s add arrow_dragon_tracer