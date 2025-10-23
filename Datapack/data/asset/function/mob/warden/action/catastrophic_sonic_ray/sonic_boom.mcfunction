#> asset:mob/warden/action/catastrophic_sonic_ray/sonic_boom
#
# sonic boom
#
# @within asset:mob/warden/action/phase(01|02)

# score
    scoreboard players add @s repeat_time 1

# sfx
    execute if score @s repeat_time matches 1 run playsound entity.warden.sonic_boom hostile @a[distance=..16] ~ ~ ~ 4 1 0

# particle
    particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 normal

# damage
    tag @s add this
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:all,tag=!this,dx=0,dy=0,dz=0] run damage @s 10 sonic_boom
    tag @s remove this

# repeat
    execute if entity @s[distance=..64] rotated as @s positioned ^ ^ ^1 run function asset:mob/warden/action/catastrophic_sonic_ray/sonic_boom

# reset
    scoreboard players reset @s repeat_time