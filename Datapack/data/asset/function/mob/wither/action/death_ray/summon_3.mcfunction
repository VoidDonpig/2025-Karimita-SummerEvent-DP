#> asset:mob/wither/action/death_ray/summon_1
#
# summon death ray marker
#
# @within asset:mob/wither/action/phase*

# summon death ray marker
    summon marker ^-0.75 ^0.2025 ^ {Tags:["asset","death_ray.marker"],data:{asset:{id:death_ray}}}
    summon marker ^0.75 ^0.2025 ^ {Tags:["asset","death_ray.marker"],data:{asset:{id:death_ray}}}

# sfx
    playsound item.trident.return hostile @a[distance=..128] ^-0.75 ^0.2025 ^ 8 1 1
    playsound item.trident.return hostile @a[distance=..128] ^0.75 ^0.2025 ^ 8 1 1
    particle flash{color:[1.0,1.0,1.0,1.0]} ^-0.75 ^0.2025 ^ 0.0 0.0 0.0 0 1 force
    particle flash{color:[1.0,1.0,1.0,1.0]} ^0.75 ^0.2025 ^ 0.0 0.0 0.0 0 1 force