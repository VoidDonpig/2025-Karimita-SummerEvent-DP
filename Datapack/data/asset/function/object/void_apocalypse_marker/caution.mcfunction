#> asset:object/void_apocalypse_marker/caution
#
# caution
#
# @within asset:object/void_apocalypse_marker/

# caution
    playsound block.note_block.pling hostile @a[tag=victim] ~ ~ ~ 1 2 1
    playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5 0

# show range
    execute if predicate lib:periodic/2 run function asset:object/void_apocalypse_marker/repeat_2