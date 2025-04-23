#> player:class/assassin/ability/assassin_leap/buff
#
# buff process
#
# @within player:class/assassin/ability/assassin_leap/charge

# init
    scoreboard players add @s assassin_leap_count 0

# sfx
    execute if score @s class.assassin.level matches 1..14 if score @s assassin_leap_count matches 0..4 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1.0 2.0 0.0
    execute if score @s class.assassin.level matches 1..14 if score @s assassin_leap_count matches 4 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0 0.0
    execute if score @s class.assassin.level matches 15..30 if score @s assassin_leap_count matches 0..9 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1.0 2.0 0.0
    execute if score @s class.assassin.level matches 15..30 if score @s assassin_leap_count matches 9 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0 0.0
    execute if score @s class.assassin.level matches 31.. if score @s assassin_leap_count matches 0..14 run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1.0 2.0 0.0
    execute if score @s class.assassin.level matches 31.. if score @s assassin_leap_count matches 14 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0 0.0

    execute if score @s class.assassin.level matches 1..14 if score @s assassin_leap_count matches 0..3 run particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0.2 8 force @a
    execute if score @s class.assassin.level matches 1..14 if score @s assassin_leap_count matches 4.. run particle minecraft:white_smoke ~ ~ ~ 0.0 0.0 0.0 0.05 8 force @a
    execute if score @s class.assassin.level matches 15..30 if score @s assassin_leap_count matches 0..8 run particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0.2 8 force @a
    execute if score @s class.assassin.level matches 15..30 if score @s assassin_leap_count matches 9.. run particle minecraft:white_smoke ~ ~ ~ 0.0 0.0 0.0 0.05 8 force @a
    execute if score @s class.assassin.level matches 31.. if score @s assassin_leap_count matches 0..13 run particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0.2 8 force @a
    execute if score @s class.assassin.level matches 31.. if score @s assassin_leap_count matches 14.. run particle minecraft:white_smoke ~ ~ ~ 0.0 0.0 0.0 0.05 8 force @a

# buff
    execute if score @s class.assassin.level matches 1..14 if score @s assassin_leap_count matches 5.. run scoreboard players set @s assassin_leap_count 4
    execute if score @s class.assassin.level matches 15..30 if score @s assassin_leap_count matches 10.. run scoreboard players set @s assassin_leap_count 9
    execute if score @s class.assassin.level matches 31.. if score @s assassin_leap_count matches 15.. run scoreboard players set @s assassin_leap_count 14
    execute store result storage player: assassin_leap.amplifer int 1 run scoreboard players get @s assassin_leap_count
    function player:class/assassin/ability/assassin_leap/apply with storage player: assassin_leap

# scoreboard
    scoreboard players set @s assassin_leap_timer 64
    scoreboard players add @s assassin_leap_count 1

# reset
    scoreboard players reset @s assassin_leap_charging
    data remove storage player: assassin_leap