#> asset:mob/ender_dragon/action/ender_flame/shot
#
# summon asset
#
# @within asset:mob/ender_dragon/action/ender_flame/

# set data
    data merge entity @s {Tags:["asset","dragon_flame","autokill"],data:{asset:{id:ender_flame}},Duration:40s}
    scoreboard players set @s autokill_timer 60
    tp @s ~ ~ ~ ~ ~