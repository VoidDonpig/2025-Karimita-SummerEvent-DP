#> asset:mob/blaze/action/blazing_flame/
#
# summon small_fireball
#
# @within asset:mob/blaze/

# summon small_fireball
    summon small_fireball ^ ^ ^ {Tags:["asset","autokill","not_init","blazing_flame_small_fireball"],LeftOwner:0b}

# set motion
    execute facing entity @n[tag=target] eyes in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^0.5
    data modify entity @n[type=small_fireball,tag=blazing_flame_small_fireball,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @n[type=small_fireball,tag=blazing_flame_small_fireball,tag=not_init] acceleration_power set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[type=small_fireball,tag=blazing_flame_small_fireball,tag=not_init] autokill_timer 50
    tag @s add attacker
    data modify entity @n[type=small_fireball,tag=blazing_flame_small_fireball,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    tag @n[type=small_fireball,tag=blazing_flame_small_fireball,tag=not_init] remove not_init

# playsound
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1 0