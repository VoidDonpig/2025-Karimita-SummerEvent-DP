#> asset:mob/stray/action/rapid_fire/summon_arrow
#
# summon arrow
#
# @within asset:mob/stray/action/rapid_fire/
#
# @input
#   macro motion
#       motion of summonning arrow

# summon arrow
    $summon minecraft:arrow ^ ^ ^ {Tags:["rapid_fire.stray.arrow"],Motion:$(motion),life:1200s}

# playsound
    playsound entity.arrow.shoot hostile @a[distance=..16] ~ ~ ~ 1 1