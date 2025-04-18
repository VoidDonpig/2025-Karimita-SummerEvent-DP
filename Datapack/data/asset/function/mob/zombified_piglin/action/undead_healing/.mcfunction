#> asset:mob/zombified_piglin/action/undead_healing/
#
# run undead healing
#
# @within asset:mob/zombified_piglin/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle heart ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[distance=..32]
    playsound entity.zombified_piglin_villager.cure hostile @a ~ ~ ~ 1 2

# heal
    effect give @s instant_damage 1 0 true