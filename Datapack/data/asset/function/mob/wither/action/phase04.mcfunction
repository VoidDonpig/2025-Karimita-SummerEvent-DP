#> asset:mob/wither/action/phase04
#
# boss phase 4
#
# @within asset:mob/wither/action/

# move
    execute if entity @s[tag=!stop_moving,tag=!charging] run function asset:mob/wither/base_move_3

# set data
    execute if score @s ai_counter.1 matches ..3 unless score @s dialogue_timer.1 matches -2147483648..2147483647 run scoreboard players set @s mob.health 3375
    execute if score @s ai_counter.1 matches ..3 as @e[type=wither,tag=wither_underling] at @s run function lib:vanish/
    execute if score @s ai_counter.1 matches ..3 as @e[type=armor_stand,tag=withering_soul] at @s run tp @s ~ -1000 ~
    execute if score @s ai_counter.1 matches ..3 run data modify entity @s active_effects set value [{id:"resistance",duration:-1,"amplifier":3,"show_particles":false}]

# message
    execute if score @s ai_counter.1 matches ..3 run scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "認めよう、お前は最も私に近づいた人間だ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 60 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "だが、もう終わりだ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "本気で相手をしてやろう！！！","color": "red"}]

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 16 0.5 0

# set phase
    execute if score @s dialogue_timer.1 matches 1 run function asset:mob/wither/action/reset
    execute if score @s ai_counter.1 matches ..3 if score @s dialogue_timer.1 matches 100 run scoreboard players add @s ai_counter.1 1

# ai scores
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1

# charge
    # roll
        execute if score @s ai_timer.1 matches 1 run function asset:mob/wither/action/charge/roll
    # move
        execute if entity @s[tag=charging,tag=!stop_moving] run function asset:mob/wither/action/charge/

# wither aspiration
    tag @s add this
    execute if predicate lib:periodic/40 unless score @s ai_timer.2 matches 600..700 as @a[distance=..32] at @s run function asset:mob/wither/action/wither_aspiration/
    tag @s remove this

# rapid wither skull
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/20 run function asset:mob/wither/action/empowered_skull_shot/
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/20 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/20 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/20 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/20 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head

# wither frenzy
    execute if score @s ai_timer.2 matches 1..599 if predicate lib:periodic/10 run function asset:mob/wither/action/wither_frenzy/

# invul
    execute if score @s ai_timer.2 matches 600..700 run data modify entity @s Invul set value 2
    execute if score @s ai_timer.2 matches 600 run tag @s add mob.invul

# wither impact
    execute if score @s ai_timer.2 matches 600 run tag @s add stop_moving
    execute if score @s ai_timer.2 matches 600..659 at @n[tag=target] run particle large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.3 16 normal
    execute if score @s ai_timer.2 matches 600 at @n[tag=target] run playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5 0
    execute if score @s ai_timer.2 matches 660 run function asset:mob/wither/action/wither_impact/marker
    execute if score @s ai_timer.2 matches 700 run function asset:mob/wither/action/wither_impact/
    execute if score @s ai_timer.2 matches 700 run data modify entity @s Invul set value 0

# nuclear explosion
    execute if score @s ai_timer.2 matches 700 run scoreboard players set @s ai_counter.2 250
    execute if score @s ai_timer.2 matches 700..1879 if predicate lib:periodic/5 run function asset:mob/wither/action/nuclear_explosion/
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 700..1879 anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    # sfx
        execute if score @s ai_timer.2 matches 700..1879 anchored eyes run playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 0

# hit count
    execute if score @s ai_counter.2 matches ..0 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "グッ...！なかなかやるな。","color": "red"}]
    execute if score @s ai_counter.2 matches ..0 run playsound entity.wither.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.5 0
    execute if score @s ai_counter.2 matches ..0 run scoreboard players set @s ai_timer.2 1881
    execute if score @s ai_counter.2 matches ..0 run tag @s add canceled_boom

# boom
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "吹き飛ぶがいい！！！！！","color": "red"}]
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. as @e[type=#lib:all,type=!#lib:monster,distance=..128] run damage @s 2048 explosion
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run particle minecraft:explosion_emitter ~ ~ ~ 16.0 16.0 16.0 0 256 normal
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run scoreboard players set @s ai_timer.2 1980
    execute if score @s ai_timer.2 matches 1880 if score @s ai_counter.2 matches 1.. run scoreboard players reset @s ai_counter.2

# oops
    execute on vehicle run rotate @s[scores={ai_timer.2=..1881}] ~ ~45

# remove invul
    execute if score @s ai_timer.2 matches 1881 run tag @s remove mob.invul
    execute if score @s ai_timer.2 matches 1980 run tag @s remove mob.invul
    execute if score @s ai_timer.2 matches 1980 run tag @s remove stop_moving
    execute if score @s ai_timer.2 matches 1980 run tag @s remove canceled_boom

# lightning wither head + catastrophic lightning + empower skull shot
    execute if score @s ai_timer.2 matches 1980..3079 if predicate lib:periodic/20 run function asset:mob/wither/action/lightning_wither_head/
    execute if score @s ai_timer.2 matches 1980..3079 if predicate lib:periodic/20 as @e[type=#lib:all,type=!#lib:undead,distance=..128,predicate=!player:is_player_exception] at @s run function asset:mob/wither/action/catastrophic_lightning/
    execute if score @s ai_timer.2 matches 1980..3079 if predicate lib:periodic/5 run function asset:mob/wither/action/empowered_skull_shot/

# skull rush
    execute if score @s ai_timer.2 matches 3080 run tag @s add stop_moving
    execute if score @s ai_timer.2 matches 3080.. if predicate lib:periodic/5 run function asset:mob/wither/action/empowered_skull_shot/
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    execute if score @s ai_timer.2 matches 3080.. anchored eyes run function asset:mob/wither/action/nuclear_explosion/summon_head
    # sfx
        execute if score @s ai_timer.2 matches 3080.. anchored eyes run playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 0

# withered aura
    execute if predicate lib:periodic/5 run function asset:mob/wither/action/withered_aura/

# reset
    execute if score @s ai_timer.1 matches 80.. run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.2 matches 3680.. run tag @s remove stop_moving
    execute if score @s ai_timer.2 matches 3680.. run scoreboard players reset @s ai_timer.2
    execute if score @s ai_counter.2 matches ..0 run scoreboard players reset @s ai_counter.2
    execute if score @s dialogue_timer.1 matches 100.. run scoreboard players reset @s dialogue_timer.1