#> player:class/archer/ability/multiple_shot/third_fail
#
# shot process
#
# @within player:class/archer/ability/multiple_shot/

# roll dice
    execute store result score $direction temporary run random value 0..1

# summon arrow
    execute if score $direction temporary matches 0 run function player:class/archer/ability/multiple_shot/left_arrow with storage player: multiple_shot
    execute if score $direction temporary matches 1 run function player:class/archer/ability/multiple_shot/right_arrow with storage player: multiple_shot

# reset
    scoreboard players reset $direction temporary