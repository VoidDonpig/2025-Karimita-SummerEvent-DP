#> player:class/wizard/join
#
# join the class
#
# @context player

# return if you've already belonged to the class
    execute if score @s player.class matches 4 run tellraw @s ["",{"text": "すでにその職業に就いています！","color": "red"}]
    execute if score @s player.class matches 4 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
    execute if score @s player.class matches 4 run return fail

# reset class data
    function player:class/reset

# join class
    scoreboard players set @s player.class 4

# suffix
    function player:class/wizard/suffix/

# send message
    execute if score @s class.wizard.level matches ..49 run playsound entity.evoker.prepare_summon player @s ~ ~ ~ 1 2 0
    execute if score @s class.wizard.level matches 50.. run playsound entity.evoker.cast_spell player @s ~ ~ ~ 1 1 0
    execute if score @s class.wizard.level matches ..29 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "gray"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.wizard.level matches 30..49 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "gold"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.wizard.level matches 50 run tellraw @s [{"text": "魔法使い","color": "white"},{"text": " ⚡","color": "aqua"},{"text": " に転職した！","color": "white"}]