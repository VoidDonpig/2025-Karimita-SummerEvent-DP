#> asset:object/dimensional_singularity/init
#
# init
#
# @within asset:object/dimensional_singularity/

# init
    setblock ~ ~ ~ minecraft:bedrock
    playsound minecraft:block.portal.trigger hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    particle minecraft:enchant ~ ~ ~ 2.0 2.0 2.0 4 1024 normal
    tag @s add already_init