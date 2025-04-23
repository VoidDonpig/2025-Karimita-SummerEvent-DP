#> asset:object/wither_skeleton_skull/crash
#
# crash process
#
# @within asset:object/skeleton_skull/

# sfx
    particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[distance=..32]
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# damage
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#lib:monster,dx=4,dy=4,dz=4] run damage @s 12 mob_attack at ~ ~ ~
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#lib:monster,dx=4,dy=4,dz=4] run effect give @s wither 10 0

# kill
    kill @s