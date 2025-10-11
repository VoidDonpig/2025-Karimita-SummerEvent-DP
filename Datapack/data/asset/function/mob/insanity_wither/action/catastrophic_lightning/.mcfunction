#> asset:mob/insanity_wither/action/catastrophic_lightning/
#
# summon marker
#
# @within

# sfx
    particle explosion ~ ~ ~ 0 0 0 0 1 force @a
    particle explosion ~1 ~ ~1 0 0 0 0 1 force @a
    particle explosion ~1 ~ ~-1 0 0 0 0 1 force @a
    particle explosion ~-1 ~ ~1 0 0 0 0 1 force @a
    particle explosion ~-1 ~ ~-1 0 0 0 0 1 force @a

# summon lightning
    summon lightning_bolt ~ ~ ~
    summon lightning_bolt ~1 ~ ~1
    summon lightning_bolt ~1 ~ ~-1
    summon lightning_bolt ~-1 ~ ~1
    summon lightning_bolt ~-1 ~ ~-1