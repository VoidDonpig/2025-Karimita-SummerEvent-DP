#> asset:object/dimensional_singularity/init
#
# init
#
# @within asset:object/dimensional_singularity/

# init
    setblock ~ ~ ~ minecraft:bedrock
    playsound minecraft:block.portal.trigger hostile @a ~ ~ ~ 16 0.5 0
    particle minecraft:enchant ~ ~ ~ 2.0 2.0 2.0 4 1024 force @a
    tag @s add already_init