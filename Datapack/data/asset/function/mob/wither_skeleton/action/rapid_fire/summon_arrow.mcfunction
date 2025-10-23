#> asset:mob/wither_skeleton/action/rapid_fire/summon_arrow
#
# summon arrow
#
# @within asset:mob/wither_skeleton/action/rapid_fire/
#
# @input
#   macro motion
#       motion of summonning arrow

# summon arrow
    $summon minecraft:arrow ^ ^ ^ {Tags:["rapid_fire.wither_skeleton.arrow"],Motion:$(motion),life:1200s}

# playsound
    playsound entity.arrow.shoot hostile @a[distance=..16] ~ ~ ~ 1 1