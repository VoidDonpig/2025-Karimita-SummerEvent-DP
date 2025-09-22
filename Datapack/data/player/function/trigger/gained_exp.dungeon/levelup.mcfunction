#> player:trigger/gained_exp.dungeon/levelup
#
# level up event
#
# @within player:trigger/gained_exp.dungeon

# leveling up process
    scoreboard players operation @s expertise.dungeon.exp -= @s expertise.dungeon.next_exp
    execute if score @s expertise.dungeon.exp matches ..-1 run scoreboard players set @s expertise.dungeon.exp 0
    scoreboard players add @s expertise.dungeon.level 1
    execute store result storage player: __temp__.next_exp int 1.35 run scoreboard players get @s expertise.dungeon.next_exp
    execute store result score @s expertise.dungeon.next_exp run data get storage player: __temp__.next_exp
    data remove storage player: __temp__

# show notification
    playsound entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}
    tellraw @s [{"text": "  LEVEL UP ","bold": true,"color": "dark_aqua"},{"text": "ダンジョン ","bold": true,"color": "aqua"},{"score":{"name": "@s","objective": "expertise.dungeon.level"},"color": "dark_aqua"}]
    tellraw @s {"text": "  REWARDS","bold": true,"color": "green"}
    tellraw @s [{"text": "  ダンジョン内でのみステータスが増加します・","color": "dark_gray",italic:true}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4% ","color": "green"},{"text": "体力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4% ","color": "green"},{"text": "攻撃力","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4% ","color": "green"},{"text": "アビリティダメージ","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4% ","color": "green"},{"text": "矢ダメージ","color": "white"}]
    tellraw @s [{"text": "   +","color": "gray"},{"text": "4% ","color": "green"},{"text": "最大マナ","color": "white"}]
    tellraw @s {"text": "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","color": "dark_aqua"}

# loop THIS
    execute if score @s expertise.dungeon.level matches ..49 if score @s expertise.dungeon.exp >= @s expertise.dungeon.next_exp run function player:trigger/gained_exp.dungeon/levelup

# add flag tag
    tag @s add statusupdate