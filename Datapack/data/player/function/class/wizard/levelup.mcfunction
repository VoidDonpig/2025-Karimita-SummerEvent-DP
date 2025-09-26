#> player:class/wizard/levelup
#
# level up event
#
# @within player:trigger/gained_exp.combat
#         player:class/wizard/levelup (THIS)

# leveling up process
    scoreboard players operation @s class.wizard.exp -= @s class.wizard.next_exp
    execute if score @s class.wizard.exp matches ..-1 run scoreboard players set @s class.wizard.exp 0
    scoreboard players add @s class.wizard.level 1
    scoreboard players operation @s class.wizard.next_exp *= $125 constant
    scoreboard players operation @s class.wizard.next_exp /= $100 constant

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "魔法使い ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "class.wizard.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "10 ","color": "green"},{"text": "マナ","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# change suffix
    function player:class/wizard/suffix/

# loop THIS
    execute if score @s class.wizard.level matches ..49 if score @s class.wizard.exp >= @s class.wizard.next_exp run function player:class/wizard/levelup

# add flag tag
    tag @s add statusupdate