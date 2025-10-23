#> asset:mob/wither/action/wither_impact/marker
#
# set marker
#
# @context wither action

# summon marker
    execute at @n[tag=target] run summon marker ~ ~ ~ {Tags:["asset","wither_impact_marker","not_init"],data:{asset:{id:wither_impact_marker}}}
    execute at @n[tag=target] run scoreboard players set @n[tag=not_init,tag=wither_impact_marker,type=marker] autokill_timer 30

# playsound
    execute at @n[tag=target] run playsound item.trident.return hostile @a[distance=..16] ~ ~ ~ 2 2 0