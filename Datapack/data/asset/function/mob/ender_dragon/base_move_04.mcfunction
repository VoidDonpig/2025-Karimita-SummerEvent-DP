#> asset:mob/ender_dragon/base_move_01
#
# movement
#
# @within asset:mob/ender_dragon/action/phase01

# movement
    scoreboard players add @s ai_counter.1 1
    
    execute if score @s ai_counter.1 matches 1..60 on vehicle facing 0 65 -50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 61..120 on vehicle facing 50 65 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 121..180 on vehicle facing -50 65 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 181..240 on vehicle facing 0 65 50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 241..300 on vehicle facing 35 65 -35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 301..360 on vehicle facing -35 65 35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 361..420 on vehicle facing 35 65 35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~
    execute if score @s ai_counter.1 matches 421..480 on vehicle facing -35 65 -35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.25 ~ ~

    execute if score @s ai_counter.1 matches 1..60 facing 0 65 -50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 61..120 facing 50 65 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 121..180 facing -50 65 0 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 181..240 facing 0 65 50 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 241..300 facing 35 65 -35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 301..360 facing -35 65 35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 361..420 facing 35 65 35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
    execute if score @s ai_counter.1 matches 421..480 facing -35 65 -35 rotated ~ ~ positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^0.05 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

# reset
    scoreboard players reset @s[scores={ai_counter.1=480..}] ai_counter.1