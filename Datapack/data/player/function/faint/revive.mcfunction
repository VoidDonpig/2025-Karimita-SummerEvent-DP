#> player:faint/revive
#
# revive process
#
# @within player:faint/timer

# set timer
    scoreboard players set @s player.death_timer 200

# revive
    scoreboard players add @s player.revive_timer 1

# calc
    scoreboard players operation $sec temporary = @s player.revive_timer
    scoreboard players operation $sec temporary /= $20 constant

    scoreboard players operation $dec temporary = @s player.revive_timer
    scoreboard players operation $dec temporary %= $20 constant
    scoreboard players operation $dec temporary /= $2 constant

# update armor stand
    data modify entity 83a-51-1-0-2 text set value ["",{"score":{"objective":"temporary","name":"$sec"},color:green},{"text":".",color:green},{"score":{"objective":"temporary","name":"$dec"},color:green},{"text":"s",color:green}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text
    data modify entity 83a-51-1-0-2 text set value ["",{"text":"蘇生中","color":"green","bold":true}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers on passengers on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text

# title
    title @s[scores={player.death_timer=1..}] times 0 4 0
    title @s[scores={player.death_timer=1..}] title ["",{"text":"蘇生中",color:"green"}]

# wake up
    execute if score @s player.revive_timer matches 60.. run function player:faint/wakeup