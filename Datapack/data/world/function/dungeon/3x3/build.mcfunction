#> world:dungeon/3x3/build
#
# start building dungeon
#
# @context this will be begun at the executor's coords, be careful

# set center
    summon marker ~ ~ ~ {Tags:["marker.dungeon_3x3_center"]}

# summon branch marker
    summon marker ~15 ~ ~ {Tags:["marker.dungeon_3x3_branch","not_first_generated"]}
    summon marker ~-15 ~ ~ {Tags:["marker.dungeon_3x3_branch","not_first_generated"]}
    summon marker ~ ~ ~15 {Tags:["marker.dungeon_3x3_branch","not_first_generated"]}
    summon marker ~ ~ ~-15 {Tags:["marker.dungeon_3x3_branch","not_first_generated"]}

# generate dungeon
    # center
        place template world:dungeon/center ~-7 ~ ~-7 none none
    # define ungenerated area
        summon marker ~15 ~ ~ {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~15 ~ ~15 {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~15 ~ ~-15 {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~-15 ~ ~ {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~-15 ~ ~15 {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~-15 ~ ~-15 {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~ ~ ~15 {Tags:["marker.dungeon_3x3.ungenerated"]}
        summon marker ~ ~ ~-15 {Tags:["marker.dungeon_3x3.ungenerated"]}
    # branch
        execute as @e[type=marker,tag=marker.dungeon_3x3_branch] at @s run function world:dungeon/3x3/generate/