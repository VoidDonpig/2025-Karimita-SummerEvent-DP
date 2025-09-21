#> world:dungeon/exit/tick
#
# exit
#
# @within world:dungeon/exit/check

# timer
    scoreboard players add @s generic_timer.1 1

# sfx
    execute if score @s generic_timer.1 matches 1 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.4 1.5
    particle reverse_portal ~ ~ ~ 1 1 1 0.03 36 force

# exit
    title @a[distance=..3] times 0 4 0
    title @a[distance=..3] title ""
    title @a[distance=..3] subtitle "スニークで帰還"
    execute as @a[distance=..3] if predicate lib:is_sneaking at @s run function world:dungeon/exit/