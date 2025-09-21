#> world:dungeon/remnants_of_cataclysm/enter/generate
#
# generate dungeon
#
# @within world:dungeon/remnants_of_cataclysm/enter/check

# generate
    $execute positioned 0 128 $(id)000 run forceload add ~ ~ ~ ~
    $execute positioned 0 128 $(id)000 run place jigsaw world:dungeon_1/root world:dungeon_1/root 8
    $execute positioned 0 128 $(id)000 as @n[type=marker,tag=dungeon_center,distance=..512,sort=furthest] run tag @s add dungeon_entrance
    $execute positioned 0 128 $(id)000 run forceload remove ~ ~ ~ ~