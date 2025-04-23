#> asset:mob/wither/death/explosion
#
# death event explosion
#
# @within asset:mob/wither/death/

# summon tnt and bolt
    $summon tnt ~$(x) ~$(y) ~$(z) {fuse:0}
    $summon lightning_bolt ~$(x) ~$(y) ~$(z)