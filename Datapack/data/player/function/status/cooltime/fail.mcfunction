#> player:status/cooltime/fail
#
# check cooltime
#
# @context ability cooltime

# calculate sec dec
    $scoreboard players operation $sec temporary = @s $(name)_cooltime
    scoreboard players operation $sec temporary /= $20 constant

    $scoreboard players operation $dec temporary = @s $(name)_cooltime
    scoreboard players operation $dec temporary %= $20 constant
    scoreboard players operation $dec temporary /= $2 constant

# tell
    tellraw @s ["",{"text":"クールダウン中！","color":"red"},{"text":"( 残り: ","color":"gray"},{"score":{"name":"$sec","objective":"temporary"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"$dec","objective":"temporary"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":" )","color":"gray"}]
    playsound entity.enderman.teleport master @s ~ ~ ~ 0.7 0.5

# reset
    scoreboard players reset $sec temporary
    scoreboard players reset $dec temporary