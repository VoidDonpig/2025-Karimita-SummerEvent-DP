#> asset:mob/wither/action/call_underling/armor_stand
#
# summon armor stand
#
# @within asset:mob/wither/action/call_underling/

# summon
    summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["wither_underling_summoner"],DisabledSlots:4144959}
    summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["wither_underling_summoner"],DisabledSlots:4144959}
    
    execute store result storage asset:mob wither.y int 1.0 run data get entity @s Pos[1]
    function asset:mob/wither/action/call_underling/spread with storage asset:mob wither

    data remove storage asset:mob wither