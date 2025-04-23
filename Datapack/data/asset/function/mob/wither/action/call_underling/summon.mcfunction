#> asset:mob/wither/action/call_underling/summon
#
# summon wither combatant
#
# @within asset:mob/wither/action/call_underling/

# sfx
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.0} ~ ~ ~ 0.0 0.0 0.0 1 32 force @a
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 2 2 0

# summon
    summon minecraft:wither ~ ~ ~ {Tags:["special_mob","wither_underling"]}

# kill summoner
    kill @s