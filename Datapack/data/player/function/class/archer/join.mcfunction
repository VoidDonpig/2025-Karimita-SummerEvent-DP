#> player:class/archer/join
#
# join the class
#
# @context player

# return if you've already belonged to the class
    execute if score @s player.class matches 3 run tellraw @s ["",{"text": "すでにその職業に就いています！","color": "red"}]
    execute if score @s player.class matches 3 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
    execute if score @s player.class matches 3 run return fail

# reset class data
    function player:class/reset

# join class
    scoreboard players set @s player.class 3

# suffix
    function player:class/archer/suffix/

# send message
    execute if score @s class.archer.level matches ..49 run playsound item.crossbow.shoot player @s ~ ~ ~ 1 1.2 0
    execute if score @s class.archer.level matches 50.. run playsound entity.wind_charge.wind_burst player @s ~ ~ ~ 1 1.2 0
    execute if score @s class.archer.level matches ..29 run tellraw @s [{"text": "射手","color": "white"},{"text": " ➶","color": "gray"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.archer.level matches 30..49 run tellraw @s [{"text": "射手","color": "white"},{"text": " ➶","color": "gold"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.archer.level matches 50 run tellraw @s [{"text": "射手","color": "white"},{"text": " ➶","color": "aqua"},{"text": " に転職した！","color": "white"}]