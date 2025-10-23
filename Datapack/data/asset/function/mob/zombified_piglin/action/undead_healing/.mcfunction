#> asset:mob/zombified_piglin/action/undead_healing/
#
# run undead healing
#
# @within asset:mob/zombified_piglin/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle heart ~ ~ ~ 0.0 0.0 0.0 0 1 normal
    playsound entity.zombified_piglin_villager.cure hostile @a[distance=..16] ~ ~ ~ 1 2

# heal
    effect give @s instant_damage 1 0 true