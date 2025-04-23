#> asset:mob/blaze/action/purgatory_flare/
#
# summon small_fireball
#
# @within asset:mob/blaze/

# summon small_fireball
    summon small_fireball ^ ^ ^ {Tags:["asset","autokill","not_init","purgatory_flare_small_fireball"],LeftOwner:0b}

# set motion
    execute rotated ~ 0 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^1.0
    data modify entity @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] acceleration_power set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] autokill_timer 40
    tag @s add attacker
    data modify entity @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    damage @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] 0.0
    tag @n[type=small_fireball,tag=purgatory_flare_small_fireball,tag=not_init] remove not_init

# repeat
    scoreboard players add @s repeat_time 1
    execute if score @s repeat_time matches ..90 rotated ~4 0 run function asset:mob/blaze/action/purgatory_flare/

# playsound
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1 0

# reset
    scoreboard players reset @s repeat_time