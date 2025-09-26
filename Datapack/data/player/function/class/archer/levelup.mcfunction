#> player:class/archer/levelup
#
# level up event
#
# @within player:trigger/gained_exp.combat
#         player:class/archer/levelup (THIS)

# leveling up process
    scoreboard players operation @s class.archer.exp -= @s class.archer.next_exp
    execute if score @s class.archer.exp matches ..-1 run scoreboard players set @s class.archer.exp 0
    scoreboard players add @s class.archer.level 1
    scoreboard players operation @s class.archer.next_exp *= $125 constant
    scoreboard players operation @s class.archer.next_exp /= $100 constant

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "射手 ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "class.archer.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1% ","color": "green"},{"text": "3Way拡散撃ち成功確率","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "2% ","color": "green"},{"text": "矢ダメージ","color": "white"}]
    tellraw @s[scores={class.archer.level=20}] [{"text": "   +","color": "gray"},{"text": "5 ","color": "green"},{"text": "貫通レベル","color": "white"}]
    tellraw @s[scores={class.archer.level=40}] [{"text": "   +","color": "gray"},{"text": "5 ","color": "green"},{"text": "貫通レベル","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# change suffix
    function player:class/archer/suffix/

# loop THIS
    execute if score @s class.archer.level matches ..49 if score @s class.archer.exp >= @s class.archer.next_exp run function player:class/archer/levelup

# add flag tag
    tag @s add statusupdate