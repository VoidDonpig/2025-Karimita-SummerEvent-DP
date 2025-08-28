#> asset:mob/revenant_priest/action/revenant_order/easy/timer
#
# timer
#
# @within asset:mob/revenant_priest/action/phase*

# timer
    scoreboard players remove @s ai_counter.1 1

# count sec dec
    scoreboard players operation $sec temporary = @s ai_counter.1
    scoreboard players operation $dec temporary = @s ai_counter.1
    scoreboard players operation $sec temporary /= $20 constant
    scoreboard players operation $dec temporary %= $20 constant
    scoreboard players operation $dec temporary /= $2 constant


# timer
    title @a[distance=..64] times 0 100 0
    execute if score @s ai_counter.2 matches 0 run title @a[distance=..64] title ["",{"text":"しゃがむ","color":"red"}]
    execute if score @s ai_counter.2 matches 1 run title @a[distance=..64] title ["",{"text":"ジャンプ","color":"red"}]
    execute if score @s ai_counter.2 matches 2 run title @a[distance=..64] title ["",{"text":"上を向く","color":"red"}]
    execute if score @s ai_counter.2 matches 3 run title @a[distance=..64] title ["",{"text":"下を向く","color":"red"}]
    title @a[distance=..64] subtitle ["",{score:{name:"$sec",objective:"temporary"},color:"red"},{"text":".","color":"red"},{score:{name:"$dec",objective:"temporary"},color:"red"},{"text":"s","color":"red"}]

# attack
    execute if score @s ai_counter.1 matches 0 run function asset:mob/revenant_priest/action/revenant_order/easy/attack

# reset
    execute if score @s ai_counter.1 matches 0 run title @a[distance=..64] title ""
    execute if score @s ai_counter.1 matches 0 run title @a[distance=..64] subtitle ""
    scoreboard players reset $sec temporary
    scoreboard players reset $dec temporary
    execute if score @s ai_counter.1 matches 0 run scoreboard players reset @s ai_counter.2
    execute if score @s ai_counter.1 matches 0 run scoreboard players reset @s ai_counter.1