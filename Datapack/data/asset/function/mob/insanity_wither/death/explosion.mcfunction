#> asset:mob/insanity_wither/death/explosion
#
# death event explosion
#
# @within asset:mob/insanity_wither/death/

# summon tnt and bolt
    $summon tnt ~$(x) ~$(y) ~$(z) {fuse:0}
    $summon lightning_bolt ~$(x) ~$(y) ~$(z)