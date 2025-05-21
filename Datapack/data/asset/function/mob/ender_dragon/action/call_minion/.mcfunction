#> asset:mob/ender_dragon/action/call_minion/
#
# summon minion
#
# @within asset:mob/ender_dragon/action/phase01

# summon minion
    summon minecraft:zombie 2 72 2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie 2 72 -2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie -2 72 2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}
    summon minecraft:zombie -2 72 -2 {Tags:["dragon_knight","special_mob"],data:{mob:{id:dragon_knight}}}