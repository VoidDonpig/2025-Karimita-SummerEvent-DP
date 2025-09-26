#> player:class/healer/levelup
#
# level up event
#
# @within player:trigger/gained_exp.combat
#         player:class/healer/levelup (THIS)

# leveling up process
    scoreboard players operation @s class.healer.exp -= @s class.healer.next_exp
    execute if score @s class.healer.exp matches ..-1 run scoreboard players set @s class.healer.exp 0
    scoreboard players add @s class.healer.level 1
    scoreboard players operation @s class.healer.next_exp *= $125 constant
    scoreboard players operation @s class.healer.next_exp /= $100 constant

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "回復師 ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "class.healer.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.32 ブロック ","color": "green"},{"text": "ヒーリングオーラ範囲","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.04 ブロック ","color": "green"},{"text": "ヒーリングサークル範囲","color": "white"}]
    tellraw @s[scores={class.healer.level=15}] [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "ヒーリングサークル回復レベル","color": "white"}]
    tellraw @s[scores={class.healer.level=30}] [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "ヒーリングサークル回復レベル","color": "white"}]
    tellraw @s[scores={class.healer.level=45}] [{"text": "   +","color": "gray"},{"text": "1 ","color": "green"},{"text": "ヒーリングサークル回復レベル","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "0.32 ブロック ","color": "green"},{"text": "祈り範囲","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# change suffix
    function player:class/healer/suffix/

# loop THIS
    execute if score @s class.healer.level matches ..49 if score @s class.healer.exp >= @s class.healer.next_exp run function player:class/healer/levelup

# add flag tag
    tag @s add statusupdate