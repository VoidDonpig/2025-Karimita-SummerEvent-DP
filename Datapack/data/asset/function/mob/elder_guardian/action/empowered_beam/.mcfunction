#> asset:mob/elder_guardian/action/empowered_beam/
#
# beam
#
# @within asset:mob/elder_guardian/

# tag
    tag @s add this

# sound
    playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 2 2 0

# damage
    execute anchored eyes run function asset:mob/elder_guardian/action/empowered_beam/beam

# summon beam
    execute anchored eyes summon marker run function asset:mob/elder_guardian/action/empowered_beam/beam00
    execute anchored eyes summon marker run function asset:mob/elder_guardian/action/empowered_beam/beam01
    execute anchored eyes summon marker run function asset:mob/elder_guardian/action/empowered_beam/beam02
    execute anchored eyes summon marker run function asset:mob/elder_guardian/action/empowered_beam/beam03
    execute anchored eyes summon marker run function asset:mob/elder_guardian/action/empowered_beam/beam04

# reset
    tag @s remove this