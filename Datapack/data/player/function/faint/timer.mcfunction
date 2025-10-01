#> player:faint/timer
#
# faint timer
#
# @within player:tick

# manage timer
    scoreboard players remove @s player.death_timer 1

# add tag
    tag @s add player.this
    execute as @e[type=mannequin,tag=player.faint_mannequin] if score @s player.id = @p[tag=player.this] player.id run tag @s add faint_mannequin.this
    tag @s remove player.this

# spectate
    gamemode spectator
    tp @s @n[type=mannequin,tag=faint_mannequin.this]

# calculate sec dec
    scoreboard players operation $sec temporary = @s player.death_timer
    scoreboard players operation $sec temporary /= $20 constant

    scoreboard players operation $dec temporary = @s player.death_timer
    scoreboard players operation $dec temporary %= $20 constant
    scoreboard players operation $dec temporary /= $2 constant

# update armor stand
    data modify entity 83a-51-1-0-2 text set value ["",{"score":{"objective":"temporary","name":"$sec"},color:yellow},{"text":".",color:yellow},{"score":{"objective":"temporary","name":"$dec"},color:yellow},{"text":"s",color:yellow}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text
    data modify entity 83a-51-1-0-2 text set value ["",{"text":"近づいてスニークで蘇生","color":"green","bold":true}]
    execute as @n[type=mannequin,tag=faint_mannequin.this] on passengers on passengers on passengers run data modify entity @s CustomName set from entity 83a-51-1-0-2 text

# title
    title @s[scores={player.death_timer=1..}] times 0 4 0
    title @s[scores={player.death_timer=1..}] title ["",{"text":"気絶してしまった！",color:"red"}]
    title @s[scores={player.death_timer=1..}] subtitle ["",{"score":{name:"$sec",objective:"temporary"},color:yellow},{"text":".",color:yellow},{"score":{name:"$dec",objective:"temporary"},color:yellow},{"text":"秒以内に蘇生されなければ死亡します",color:yellow}]

# revive process
    execute if entity @p[distance=..1.6,predicate=player:is_sneaking] run function player:faint/revive
    execute unless entity @p[distance=..1.6,predicate=player:is_sneaking] run scoreboard players reset @s player.revive_timer

# kill
    gamemode survival @s[scores={player.death_timer=0}]
    execute if score @s player.death_timer matches 0 run playsound entity.player.death player @a[distance=..32] ~ ~ ~ 1 1 0
    execute in world:hub run tp @s[scores={player.death_timer=0}] 0 63 0
    execute if score @s player.death_timer matches 0 run kill @e[type=mannequin,tag=faint_mannequin.this]
    # statusupdate
    execute if score @s player.death_timer matches 0 run tag @s add statusupdate

# reset
    tag @e[type=mannequin,tag=faint_mannequin.this] remove this
    scoreboard players reset @s[scores={player.death_timer=0}] player.death_timer
    scoreboard players reset $sec temporary
    scoreboard players reset $dec temporary