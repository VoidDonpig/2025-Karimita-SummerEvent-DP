#> asset:mob/ender_dragon/action/call_minion/
#
# summon minion
#
# @within asset:mob/ender_dragon/action/phase01

# summon minion
    summon minecraft:zombie 2 64 2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie 2 64 -2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie -2 64 2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie -2 64 -2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}

# sfx
    playsound entity.zombie_villager.cure hostile @a 2 64 2 2 2 0
    playsound entity.zombie_villager.cure hostile @a 2 64 -2 2 2 0
    playsound entity.zombie_villager.cure hostile @a -2 64 2 2 2 0
    playsound entity.zombie_villager.cure hostile @a -2 64 -2 2 2 0