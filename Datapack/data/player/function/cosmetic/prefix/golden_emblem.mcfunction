#> player:cosmetic/prefix/golden_emblem
#
# golden emblem
#
# @context golden emblem prefix

# apply
    execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    data modify storage player: __temp__.prefix set value {"text":"⚜","color":gold}
    function player:cosmetic/prefix/apply with storage player: __temp__
    data remove storage player: __temp__