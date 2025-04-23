#> asset:object/withering_soul/blast
#
# blast
#
# @within asset:object/withering_soul/attacked

# damage
    execute on passengers at @s positioned ~-1.0 ~-0.5 ~-1.0 as @e[type=wither,dx=1,dy=1,dz=1,tag=!special_mob] run tag @s add damaged
    scoreboard players remove @e[type=wither,tag=damaged] mob.health 500
    execute as @e[type=wither,tag=damaged] run damage @s 0.0 out_of_world
    execute as @e[type=wither,tag=damaged] run function health_display:update
    tag @n[type=wither,tag=damaged] remove damaged

# particle 
    execute on passengers at @s positioned ~ ~0.5 ~ run particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[distance=..32]
# kill
    kill @s