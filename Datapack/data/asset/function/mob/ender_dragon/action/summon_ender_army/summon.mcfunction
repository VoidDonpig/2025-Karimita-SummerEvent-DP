#> mob:mob/ender_dragon/action/summon_ender_army/summon
#
# summon ender_dragon combatant
#
# @within mob:mob/ender_dragon/action/summon_ender_army/

# sfx
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:dust{color:[0.667,0.090,1.000],scale:1.0} ~ ~ ~ 0.0 0.0 0.0 1 32 normal
    playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 2 2 0

# summon
    execute if entity @s[tag=voidling_zealot_summoner] run summon minecraft:enderman ~ ~ ~ {Tags:["special_mob","voidling_zealot"],data:{mob:{id:voidling_zealot}}}
    execute if entity @s[tag=deleted_summoner] run summon minecraft:zombie ~ ~ ~ {Tags:["special_mob","deleted"],data:{mob:{id:deleted}}}

# kill summoner
    kill @s