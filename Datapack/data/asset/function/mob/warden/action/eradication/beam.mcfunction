#> asset:mob/warden/action/eradication/beam
#
# sonic boom
#
# @within asset:mob/warden/action/phase(01|02)

# score
    scoreboard players add @s repeat_time 1

# sfx
    execute if score @s repeat_time matches 1 run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 4 1 0

# particle
    particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~1.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~2.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~3.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~4.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~5.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~6.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~7.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~8.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~9.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~10.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~11.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~12.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~13.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~14.0 ~ 0.0 0.0 0.0 0 1 force @a
    particle sonic_boom ~ ~15.0 ~ 0.0 0.0 0.0 0 1 force @a

# damage
    tag @s add this
    execute positioned ~-0.5 ~-1.5 ~-0.5 as @e[type=#lib:all,tag=!this,dx=0,dy=15,dz=0] run damage @s 10 sonic_boom
    tag @s remove this

# repeat
    execute if entity @s[distance=..64] positioned ^ ^ ^1 run function asset:mob/warden/action/eradication/beam

# reset
    scoreboard players reset @s repeat_time