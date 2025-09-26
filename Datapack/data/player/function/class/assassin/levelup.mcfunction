#> player:class/assassin/levelup
#
# level up event
#
# @within player:trigger/gained_exp.combat
#         player:class/assassin/levelup (THIS)

# leveling up process
    scoreboard players operation @s class.assassin.exp -= @s class.assassin.next_exp
    execute if score @s class.assassin.exp matches ..-1 run scoreboard players set @s class.assassin.exp 0
    scoreboard players add @s class.assassin.level 1
    scoreboard players operation @s class.assassin.next_exp *= $125 constant
    scoreboard players operation @s class.assassin.next_exp /= $100 constant

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "暗殺者 ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "class.assassin.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.8 ","color": "green"},{"text": "攻撃力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.04 ","color": "green"},{"text": "移動速度","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "攻撃速度","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# change suffix
    function player:class/assassin/suffix/

# loop THIS
    execute if score @s class.assassin.level matches ..49 if score @s class.assassin.exp >= @s class.assassin.next_exp run function player:class/assassin/levelup

# add flag tag
    tag @s add statusupdate