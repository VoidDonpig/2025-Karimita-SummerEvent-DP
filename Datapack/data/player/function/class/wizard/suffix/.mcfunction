#> player:class/wizard/suffix/
#
# suffix
#
# @context suffix update

# update
    execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    execute if score @s class.wizard.level matches 1..9 run data modify storage player: __temp__.color set value gray
    execute if score @s class.wizard.level matches 10..19 run data modify storage player: __temp__.color set value white
    execute if score @s class.wizard.level matches 20..29 run data modify storage player: __temp__.color set value yellow
    execute if score @s class.wizard.level matches 30..39 run data modify storage player: __temp__.color set value aqua
    execute if score @s class.wizard.level matches 40..49 run data modify storage player: __temp__.color set value light_purple
    execute if score @s class.wizard.level matches 50.. run data modify storage player: __temp__.color set value red
    function player:class/wizard/suffix/apply with storage player: __temp__
    data remove storage player: __temp__