#> asset:mob/wither/remove
#
# remove wither
#
# @context wither

# summon items
    summon item ~ ~ ~ {Item:{id:"soul_sand",count:4}}
    summon item ~ ~ ~ {Item:{id:"wither_skeleton_skull",count:3}}

# remove wither
    data remove entity @s equipment
    function lib:vanish/

# tellraw
    tellraw @a [{"text":"萎縮するような空気が消え去った...",italic: true,"color":"gray"}]