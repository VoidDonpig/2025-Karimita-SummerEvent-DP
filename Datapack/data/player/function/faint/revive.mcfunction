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
    scoreboard players operation $int temporary /= $10 constant

    scoreboard players operation $float temporary = @s player.revive_timer
    scoreboard players operation $float temporary %= $1000 constant

# update armor stand
    data modify entity 83a-51-1-0-2 text set value ["",{"score":{"objective":"temporary","name":"$int"},color:green},{"text":".",color:green},{"score":{"objective":"temporary","name":"$float"},color:green},{"text":"%",color:green}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text
    data modify entity 83a-51-1-0-2 text set value ["",{"text":"蘇生中","color":"green","bold":true}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers on passengers on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text

# title
    title @s[scores={player.death_timer=1..}] times 0 4 0
    title @s[scores={player.death_timer=1..}] title ["",{"text":"蘇生中",color:"green"}]

# wake up
    execute if score @s player.revive_timer matches 1000.. run function player:faint/wakeup

# reset
    scoreboard players reset $int temporary
    scoreboard players reset $float temporary