#> player:class/knight/levelup
#
# level up event
#
# @within player:trigger/gained_exp.combat
#         player:class/knight/levelup (THIS)

# leveling up process
    scoreboard players operation @s class.knight.exp -= @s class.knight.next_exp
    execute if score @s class.knight.exp matches ..-1 run scoreboard players set @s class.knight.exp 0
    scoreboard players add @s class.knight.level 1
    scoreboard players operation @s class.knight.next_exp *= $125 constant
    scoreboard players operation @s class.knight.next_exp /= $100 constant

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "剣士 ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "class.knight.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4 ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.02 ","color": "green"},{"text": "ノックバック耐性","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.06 ","color": "green"},{"text": "攻撃距離","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.06 ","color": "green"},{"text": "攻撃距離","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1% ","color": "green"},{"text": "パワフルスラッシュ","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "難攻不落ダメージ","color": "white"}]
    tellraw @s[scores={class.knight.level=20}] [{"text": "   +","color": "gray"},{"text": "5 ","color": "green"},{"text": "不屈の魂効果レベル","color": "white"}]
    tellraw @s[scores={class.knight.level=40}] [{"text": "   +","color": "gray"},{"text": "5 ","color": "green"},{"text": "不屈の魂効果レベル","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# change team
    execute if score @s class.knight.level matches 30 run team join class.knight_1 @s
    execute if score @s class.knight.level matches 50 run team join class.knight_2 @s
    execute if score @s class.knight.level matches 50 if score @s class.archer.level matches 50 if score @s class.assassin.level matches 50 if score @s class.wizard.level matches 50 if score @s class.healer.level matches 50 run team join class.knight_3 @s

# loop THIS
    execute if score @s class.knight.level matches ..49 if score @s class.knight.exp >= @s class.knight.next_exp run function player:class/knight/levelup

# add flag tag
    tag @s add statusupdate