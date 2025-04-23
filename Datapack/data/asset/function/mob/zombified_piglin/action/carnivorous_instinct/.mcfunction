#> asset:mob/zombified_piglin/action/carnivorous_instinct/
#
# carnivorous instinct process
#
# @within asset:mob/zombified_piglin/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0 8 force @a[distance=..32]
    playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 2

# buff
    effect give @s strength 10 0 false
    effect give @s speed 10 1 false