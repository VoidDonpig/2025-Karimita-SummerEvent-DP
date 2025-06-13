#> asset:mob/evoker/action/wind_shot/
#
# wind shot
#
# @within asset:mob/evoker/

# summon wind_charge
    summon wind_charge ^ ^ ^ {Tags:["asset","autokill","not_init","blazing_flame_wind_charge"],LeftOwner:0b}

# set motion
    execute facing entity @n[tag=target] eyes in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^0.5
    data modify entity @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] acceleration_power set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] autokill_timer 50
    tag @s add attacker
    data modify entity @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    damage @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] 0.0
    tag @n[type=wind_charge,tag=blazing_flame_wind_charge,tag=not_init] remove not_init

# playsound
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1 0

# set timer
    execute if score $difficulty_level world matches 1..3 run scoreboard players set @s ai_timer.1 100
    execute if score $difficulty_level world matches 4 run scoreboard players set @s ai_timer.1 60
    execute if score $difficulty_level world matches 5 run scoreboard players set @s ai_timer.1 20