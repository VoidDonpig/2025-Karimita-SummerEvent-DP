#> lib:player_motion/macro
#
# player motion using macro arguments
#
# @context need x y z arguments

# convert arguments
    $scoreboard players set $x player.motion $(x)
    $scoreboard players set $y player.motion $(y)
    $scoreboard players set $z player.motion $(z)

# apply motion
    function lib:player_motion/score