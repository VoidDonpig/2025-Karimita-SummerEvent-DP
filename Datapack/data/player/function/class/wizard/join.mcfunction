#> player:class/wizard/join
#
# join the class
#
# @context player

# reset class data
    function player:class/reset

# join team
    team join class.wizard @s
    execute if score @s class.wizard.level matches 30..49 run team join class.wizard_1 @s
    execute if score @s class.wizard.level matches 50 run team join class.wizard_2 @s
    execute if score @s class.wizard.level matches 50 if score @s class.archer.level matches 50 if score @s class.archer.level matches 50 if score @s class.wizard.level matches 50 if score @s class.healer.level matches 50 run team join class.wizard_3 @s

# send message
    execute if score @s class.wizard.level matches ..29 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "gray"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.wizard.level matches 30..49 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "gold"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.wizard.level matches 50 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "aqua"},{"text": " に転職した！","color": "white"}]

# add flag tag
    tag @s add statusupdate