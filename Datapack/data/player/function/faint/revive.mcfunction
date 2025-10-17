#> player:faint/revive
#
# revive process
#
# @within player:faint/timer

# set timer
    scoreboard players set @s player.death_timer 600

# revive
    scoreboard players add @s player.revive_timer 25
    execute if entity @p[distance=..1.6,predicate=player:team/class.healer] run scoreboard players add @s player.revive_timer 25

# calc
    scoreboard players operation $int temporary = @s player.revive_timer
    scoreboard players operation $int temporary /= $20 constant

    scoreboard players operation $float temporary = @s player.revive_timer
    scoreboard players operation $float temporary %= $20 constant
    scoreboard players operation $float temporary /= $2 constant

# update armor stand
    data modify entity 83a-51-1-0-2 text set value ["",{"score":{"objective":"temporary","name":"$int"},color:green},{"text":".",color:green},{"score":{"objective":"temporary","name":"$float"},color:green},{"text":"%",color:green}]
    execute on vehicle on vehicle on vehicle run data modify entity @s CustomName set from entity 83a-51-1-0-2 text
    data modify entity 83a-51-1-0-2 text set value ["",{"text":"蘇生中","color":"green","bold":true}]
    execute on vehicle run data modify entity @s CustomName set from entity 83a-51-1-0-2 text

# title
    title @s times 0 4 0
    title @s title ["",{"text":"蘇生中",color:"green"}]
    title @s subtitle ["",{"score":{"objective":"temporary","name":"$int"},color:green},{"text":".",color:green},{"score":{"objective":"temporary","name":"$float"},color:green},{"text":"%",color:green}]


# wake up
    execute if score @s player.revive_timer matches 1000.. run function player:faint/wakeup

# reset
    scoreboard players reset $int temporary
    scoreboard players reset $float temporary