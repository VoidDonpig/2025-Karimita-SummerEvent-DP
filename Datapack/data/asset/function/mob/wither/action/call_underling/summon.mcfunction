#> asset:mob/wither/action/call_underling/summon
#
# summon wither combatant
#
# @within asset:mob/wither/action/call_underling/

# sfx
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.0} ~ ~ ~ 0.0 0.0 0.0 1 32 force @a
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 2 2 0

# summon
    summon minecraft:wither ~ ~ ~ {Tags:["wither_underling","special_mob"],data:{mob:{id:wither_underling}}}

# kill summoner
    kill @s