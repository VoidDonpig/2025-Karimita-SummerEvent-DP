#> player:cosmetic/prefix/reset
#
# golden emblem
#
# @context reset prefix

# apply
    execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    data modify storage player: __temp__.prefix set value {text:""}
    function player:cosmetic/prefix/apply with storage player: __temp__
    data remove storage player: __temp__