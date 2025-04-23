#> player:class/knight/join
#
# join the class
#
# @context player

# reset class data
    function player:class/reset

# join team
    team join class.knight @s
    execute if score @s class.knight.level matches 30..49 run team join class.knight_1 @s
    execute if score @s class.knight.level matches 50 run team join class.knight_2 @s
    execute if score @s class.knight.level matches 50 if score @s class.archer.level matches 50 if score @s class.archer.level matches 50 if score @s class.wizard.level matches 50 if score @s class.knight.level matches 50 run team join class.knight_3 @s

# send message
    execute if score @s class.knight.level matches ..29 run tellraw @s [{"text": "剣士","color": "white"},{"text": " ⚔","color": "gray"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.knight.level matches 30..49 run tellraw @s [{"text": "剣士","color": "white"},{"text": " ⚔","color": "gold"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.knight.level matches 50 run tellraw @s [{"text": "剣士","color": "white"},{"text": " ⚔","color": "aqua"},{"text": " に転職した！","color": "white"}]

# add flag tag
    tag @s add statusupdate