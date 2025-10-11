#> asset:mob/insanity_wither/action/death_ray/summon_2
#
# summon death ray marker
#
# @within asset:mob/insanity_wither/action/phase*

# summon death ray marker
    summon marker ^-1.5 ^1.5 ^ {Tags:["asset","death_ray.marker"],data:{asset:{id:death_ray}}}
    summon marker ^1.5 ^1.5 ^ {Tags:["asset","death_ray.marker"],data:{asset:{id:death_ray}}}

# sfx
    playsound item.trident.return hostile @a ^-1.5 ^1.5 ^ 2 1 1
    playsound item.trident.return hostile @a ^1.5 ^1.5 ^ 2 1 1
    particle flash{color:[1.0,1.0,1.0,1.0]} ^-1.5 ^1.5 ^ 0.0 0.0 0.0 0 1 force @a
    particle flash{color:[1.0,1.0,1.0,1.0]} ^1.5 ^1.5 ^ 0.0 0.0 0.0 0 1 force @a