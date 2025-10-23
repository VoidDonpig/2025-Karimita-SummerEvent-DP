#> asset:mob/revenant_priest/action/revenant_order/unfreeze
#
# freeze
#
# @within asset:mob/revenant_priest/action/phase01

# sit down
    execute on vehicle run kill @s
    data modify entity @s Invulnerable set value 0b

# playsound
    playsound entity.evoker.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 0.5 0