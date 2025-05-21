#> asset:mob/ender_dragon/base_move_01
#
# movement
#
# @within asset:mob/ender_dragon/action/phase01

# movement
    scoreboard players add @s movement_timer.1 1
    
    execute if score @s movement_timer.1 matches 1..60 on vehicle facing 0 100 50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^4 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.3 ~ ~
    execute if score @s movement_timer.1 matches 61..120 on vehicle facing 50 100 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^4 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.3 ~ ~
    execute if score @s movement_timer.1 matches 121..180 on vehicle facing -50 100 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^4 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.3 ~ ~
    execute if score @s movement_timer.1 matches 181..240 on vehicle facing 0 100 -50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^4 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.3 ~ ~

    execute if score @s movement_timer.1 matches 1..60 facing 0 100 50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s movement_timer.1 matches 61..120 facing 50 100 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s movement_timer.1 matches 121..180 facing -50 100 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s movement_timer.1 matches 181..240 facing 0 100 -50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~


# reset
    scoreboard players reset @s[scores={movement_timer.1=240..}] movement_timer.1