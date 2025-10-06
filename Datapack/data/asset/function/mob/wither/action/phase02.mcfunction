#> asset:mob/wither/action/phase02
#
# boss phase 2
#
# @within asset:mob/wither/action/

# move
    execute if entity @s[tag=!stop_moving,tag=!charging] run function asset:mob/wither/base_move_1

# set health
    execute if score @s ai_counter.1 matches ..1 unless score @s dialogue_timer.1 matches -2147483648..2147483647 run scoreboard players set @s mob.health 10125

# message
    execute if score @s ai_counter.1 matches ..1 run scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "あまり調子に乗るんじゃないぞ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "私の力は一撃で人間を葬り去ることができる。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "それがどんなものか見せてやろう！","color": "red"}]

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0

# set phase
    execute if score @s dialogue_timer.1 matches 1 run function asset:mob/wither/action/reset
    execute if score @s ai_counter.1 matches ..1 if score @s dialogue_timer.1 matches 100 run scoreboard players add @s ai_counter.1 1

# ai scores
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1
    scoreboard players add @s ai_timer.3 1
    scoreboard players add @s ai_timer.4 1
    scoreboard players add @s ai_timer.5 1

# charge
    # roll
        execute if score @s ai_timer.1 matches 1 run function asset:mob/wither/action/charge/roll
    # move
        execute if entity @s[tag=charging,tag=!stop_moving] run function asset:mob/wither/action/charge/

# rapid wither skull
    execute if score @s ai_timer.2 matches 1..299 if predicate lib:periodic/10 run function asset:mob/wither/action/rapid_skull_shot/
    execute if score @s ai_timer.2 matches 840..1200 if predicate lib:periodic/5 run function asset:mob/wither/action/rapid_skull_shot/

# lightning wither head
    execute if score @s ai_timer.2 matches 300 run tag @s add stop_moving
    execute if score @s ai_timer.2 matches 300..400 if predicate lib:periodic/20 run function asset:mob/wither/action/lightning_wither_head/

# wither frenzy
    execute if score @s ai_timer.2 matches 800 run function asset:mob/wither/action/wither_frenzy/
    execute if score @s ai_timer.5 matches 1 if score @s ai_timer.2 matches 1..399 run function asset:mob/wither/action/wither_frenzy/

# catastrophic lightning
    execute if score @s ai_timer.2 matches 400..600 run data modify entity @s Invul set value 2
    execute if score @s ai_timer.2 matches 400 store result score $random temporary run random value 0..2
    execute if score @s ai_timer.2 matches 400 if score $random temporary matches 0 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "雷よ、奴を滅せよ！","color": "red"}]
    execute if score @s ai_timer.2 matches 400 if score $random temporary matches 1 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "私のエネルギーはこの程度ではない。","color": "red"}]
    execute if score @s ai_timer.2 matches 400 if score $random temporary matches 2 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "早々に諦めた方が楽に死ねるぞ。","color": "red"}]
    execute if score @s ai_timer.2 matches 400..600 if predicate lib:periodic/20 as @e[type=#lib:all,type=!#lib:undead,distance=..128,predicate=!player:is_player_exception] at @s run function asset:mob/wither/action/catastrophic_lightning/

# curse of wither
    execute if score @s ai_timer.2 matches 600..800 run data modify entity @s Invul set value 2
    execute if score @s ai_timer.2 matches 600..800 run particle large_smoke ~ ~4.0 ~ 0.4 0.2 0.4 0 32 force @a[distance=..64]
    execute if score @s ai_timer.2 matches 600..800 run particle electric_spark ~ ~4.0 ~ 0.4 0.2 0.4 1 32 force @a[distance=..64]
    execute if score @s ai_timer.2 matches 600..760 run scoreboard players operation $interval temporary = @s ai_timer.2
    execute if score @s ai_timer.2 matches 600..760 run scoreboard players operation $interval temporary %= $2 constant
    execute if score $interval temporary matches 0 run playsound block.bell.resonate hostile @a ~ ~5.0 ~ 16 1 0
    execute if score $interval temporary matches 0 run playsound block.beacon.activate hostile @a ~ ~5.0 ~ 16 0.5 0
    scoreboard players reset $interval temporary
    execute if score @s ai_timer.2 matches 600 run function asset:mob/wither/action/curse_of_wither/
    execute if score @s ai_timer.2 matches 600 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 600 run title @a title {"text":"10","color":"dark_red"}
    execute if score @s ai_timer.2 matches 600 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 620 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 620 run title @a title {"text":"9","color":"dark_red"}
    execute if score @s ai_timer.2 matches 620 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 640 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 640 run title @a title {"text":"8","color":"dark_red"}
    execute if score @s ai_timer.2 matches 640 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 660 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 660 run title @a title {"text":"7","color":"dark_red"}
    execute if score @s ai_timer.2 matches 660 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 680 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 680 run title @a title {"text":"6","color":"dark_red"}
    execute if score @s ai_timer.2 matches 680 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 700 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 700 run title @a title {"text":"5","color":"dark_red"}
    execute if score @s ai_timer.2 matches 700 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 720 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 720 run title @a title {"text":"4","color":"dark_red"}
    execute if score @s ai_timer.2 matches 720 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 740 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 740 run title @a title {"text":"3","color":"dark_red"}
    execute if score @s ai_timer.2 matches 740 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 760 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 760 run title @a title {"text":"2","color":"dark_red"}
    execute if score @s ai_timer.2 matches 760 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 780 run title @a times 0 20 0
    execute if score @s ai_timer.2 matches 780 run title @a title {"text":"1","color":"dark_red"}
    execute if score @s ai_timer.2 matches 780 run title @a subtitle {"text":"オーブに触れて呪いを浄化せよ！","color":"red"}
    execute if score @s ai_timer.2 matches 800 as @a[tag=wither_cursed] at @s run function asset:mob/wither/action/curse_of_wither/kill
    execute if score @s ai_timer.2 matches 800 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 2 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 2 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 2 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 2 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 2 0
    execute if score @s ai_timer.2 matches 800 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s ai_timer.2 matches 800 run particle minecraft:large_smoke ~ ~ ~ 1.6 1.6 1.6 0.4 512
    execute if score @s ai_timer.2 matches 800 run data modify entity @s Invul set value 0

# summon minion
    execute if score @s ai_timer.2 matches 840 run function asset:mob/wither/action/summon_minion/
    execute if score @s ai_timer.2 matches 840 positioned ^-10 ^ ^ run function asset:mob/wither/action/summon_minion/no_messages
    execute if score @s ai_timer.2 matches 840 positioned ^10 ^ ^ run function asset:mob/wither/action/summon_minion/no_messages

# wither tnt
    execute if score @s ai_timer.3 matches 50 if score @s ai_timer.2 matches 1..399 run function asset:mob/wither/action/wither_tnt/
    execute if score @s ai_timer.3 matches 50 if score @s ai_timer.2 matches 840..1200 run function asset:mob/wither/action/wither_tnt/

# withered aura
    execute if score @s ai_timer.4 matches 10 if score @s ai_timer.2 matches 1..599 run function asset:mob/wither/action/withered_aura/
    execute if score @s ai_timer.4 matches 10 if score @s ai_timer.2 matches 840..1200 run function asset:mob/wither/action/withered_aura/

# reset
    execute if score @s ai_timer.1 matches 80.. run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.2 matches 1200 run tag @s remove stop_moving
    execute if score @s ai_timer.2 matches 1200.. run scoreboard players reset @s ai_timer.2
    execute if score @s ai_timer.3 matches 50.. run scoreboard players reset @s ai_timer.3
    execute if score @s ai_timer.4 matches 10.. run scoreboard players reset @s ai_timer.4
    execute if score @s ai_timer.5 matches 20.. run scoreboard players reset @s ai_timer.5
    execute if score @s dialogue_timer.1 matches 100.. run scoreboard players reset @s dialogue_timer.1
    execute if score @s ai_timer.2 matches 400 run scoreboard players reset $random temporary