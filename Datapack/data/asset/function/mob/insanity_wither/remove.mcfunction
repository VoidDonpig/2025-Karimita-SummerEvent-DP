#> asset:mob/insanity_wither/remove
#
# remove insanity_wither
#
# @context insanity_wither

# summon items
    summon item ~ ~ ~ {Item:{id:"soul_sand",count:4}}
    summon item ~ ~ ~ {Item:{id:"insanity_wither_skeleton_skull",count:3}}

# remove insanity_wither
    data remove entity @s equipment
    function lib:vanish/

# tellraw
    tellraw @a [{"text":"萎縮するような空気が消え去った...",italic: true,"color":"gray"}]