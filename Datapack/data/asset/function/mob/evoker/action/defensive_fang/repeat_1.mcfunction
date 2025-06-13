#> asset:mob/evoker/action/defensive_fang/reprat_1
#
# summon fang
#
# @within asset:mob/evoker/action/defensive_fang/

# add score
    scoreboard players add @s repeat_time 1

# summon fang
    summon evoker_fangs ^ ^0.8 ^2 {Warmup:0s,Tags:["defensive_fang_evoker_fang","not_init"]}

# repeat
    execute unless score @s repeat_time matches 12.. rotated ~30 0 positioned ^ ^ ^1.2 run function asset:mob/evoker/action/defensive_fang/repeat_1

# reset
    scoreboard players reset @s repeat_time