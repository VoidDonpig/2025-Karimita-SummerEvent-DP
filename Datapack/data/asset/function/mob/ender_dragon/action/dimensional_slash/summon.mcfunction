#> asset:mob/ender_dragon/action/dimensional_slash/summon
#
# dimenstional slash marker
#
# @within asset:mob/ender_dragon/action/phase_special_action/phase02

# summon marker
    execute positioned 0 63 0 run summon marker ~ ~ ~ {Tags:["dimensional_slash.center"],Rotation:[45,0]}
    execute positioned 0 63 0 run summon marker ~ ~ ~ {Tags:["dimensional_slash.center"],Rotation:[-45,0]}
    execute positioned 0 63 0 run summon marker ~ ~ ~ {Tags:["dimensional_slash.center"],Rotation:[135,0]}
    execute positioned 0 63 0 run summon marker ~ ~ ~ {Tags:["dimensional_slash.center"],Rotation:[-135,0]}

# set data
    execute as @e[type=marker,tag=dimensional_slash.center] at @s run function asset:mob/ender_dragon/action/dimensional_slash/set_data