#> player:trigger/gained_exp.dungeon
#
# gained combat exp event
#
# @within player:tick

# add total exp
    scoreboard players operation @s expertise.dungeon.total_exp += @s exp_queue.dungeon
    # prevent overflow
        execute if score @s expertise.dungeon.total_exp matches ..-1 run scoreboard players set @s expertise.dungeon.total_exp 2147483647

# add exp
    scoreboard players operation @s expertise.dungeon.exp += @s exp_queue.dungeon

# level up if reach requirement
    execute if score @s expertise.dungeon.level matches ..49 if score @s expertise.dungeon.exp >= @s expertise.dungeon.next_exp run function player:trigger/gained_exp.dungeon/levelup

# reset
    scoreboard players reset @s exp_queue.dungeon