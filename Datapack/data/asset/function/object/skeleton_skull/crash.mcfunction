#> asset:object/skeleton_skull/crash
#
# crash process
#
# @within asset:object/skeleton_skull/

# sfx
    particle block{block_state:bone_block} ~ ~ ~ 0.2 0.2 0.2 0 16 normal
    playsound entity.skeleton.death hostile @a[distance=..16] ~ ~ ~ 1 0.75

# damage
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#lib:monster,dx=0] run damage @s 4 mob_attack at ~ ~ ~

# kill
    kill @s