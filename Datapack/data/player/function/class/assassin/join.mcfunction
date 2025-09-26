#> player:class/assassin/join
#
# join the class
#
# @context player

# return if you've already belonged to the class
    execute if score @s player.class matches 2 run tellraw @s ["",{"text": "すでにその職業に就いています！","color": "red"}]
    execute if score @s player.class matches 2 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
    execute if score @s player.class matches 2 run return fail

# reset class data
    function player:class/reset

# join class
    scoreboard players set @s player.class 2

# suffix
    function player:class/assassin/suffix/

# send message
    execute if score @s class.assassin.level matches ..49 run playsound entity.blaze.hurt player @s ~ ~ ~ 1 1.3 0
    execute if score @s class.assassin.level matches 50.. run playsound item.shield.break player @s ~ ~ ~ 1 0.5 0
    execute if score @s class.assassin.level matches ..29 run tellraw @s [{"text": "暗殺者","color": "white"},{"text": " ☄","color": "gray"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.assassin.level matches 30..49 run tellraw @s [{"text": "暗殺者","color": "white"},{"text": " ☄","color": "gold"},{"text": " に転職した！","color": "white"}]
    execute if score @s class.assassin.level matches 50 run tellraw @s [{"text": "暗殺者","color": "white"},{"text": " ☄","color": "aqua"},{"text": " に転職した！","color": "white"}]