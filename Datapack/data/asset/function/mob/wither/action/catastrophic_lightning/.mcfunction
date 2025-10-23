#> asset:mob/wither/action/catastrophic_lightning/
#
# summon marker
#
# @within

# summon marker
    summon marker ~ ~ ~ {Tags:["asset","catastrophic_lightning_maeker"],data:{asset:{id:catastrophic_lightning_marker}}}

# sfx
    particle minecraft:electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 1 16 normal
    playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..16] ~ ~ ~ 2 1.5 0