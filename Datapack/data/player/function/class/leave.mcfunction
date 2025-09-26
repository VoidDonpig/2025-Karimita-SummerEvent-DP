#> player:class/leave
#
# leave class
#
# @within ui:class_changer/page/changed

# check
    execute unless score @s player.class = @s player.class run tellraw @s {"text":"あなたはすでに無職です！","color":red}
    execute unless score @s player.class = @s player.class run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
    execute unless score @s player.class = @s player.class run return fail

# leave 
    scoreboard players reset @s player.class
    execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    function player:class/remove_suffix with storage player: __temp__
    data remove storage player: __temp__

# sfx
    tellraw @s ["",{"text":"無職がこの世界を冒険するのは非常に危険です！","color":red,"bold":true},"\n",{text:"何かの職業に就くことを推奨します！","color":red,"bold":true}]
    playsound block.note_block.pling player @s ~ ~ ~ 1 2 1