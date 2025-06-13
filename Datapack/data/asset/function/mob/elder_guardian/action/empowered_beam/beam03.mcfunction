#> asset:mob/elder_guardian/action/empowered_beam/beam03
#
# reflecting beam
#
# @within asset:mob/elder_guardian/action/empowered_beam/beam

# init
    execute rotated as @n[tag=this] run tp @s ^ ^ ^ ~-45 ~-45

# set data
    data merge entity @s {Tags:["asset","empowered_beam","autokill"],data:{asset:{id:empowered_beam}}}

# autokill
    scoreboard players set @s autokill_timer 80