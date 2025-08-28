#> asset:mob/revenant_priest/action/revenant_order/easy/impel
#
# impel easy mode
#
# @within asset:mob/revenant_priest/action/phase*

# set timer
    $scoreboard players set @s ai_counter.1 $(timer)

# playsound
    playsound block.anvil.land hostile @a ~ ~ ~ 2 1.25 0

# random order
    execute store result score @s ai_counter.2 run random value 0..3