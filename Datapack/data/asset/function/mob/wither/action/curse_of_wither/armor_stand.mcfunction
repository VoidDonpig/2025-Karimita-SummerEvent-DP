#> asset:mob/wither/action/curse_of_wither/armor_stand
#
# summon armor stand for setting location
#
# @within asset:mob/wither/action/curse_of_wither/

# summon
    summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["sacred_orb_summoner"],DisabledSlots:4144959}

    execute store result storage asset:mob wither.y int 1.0 run data get entity @s Pos[1]
    function asset:mob/wither/action/curse_of_wither/spread with storage asset:mob wither

    data remove storage asset:mob wither