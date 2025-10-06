#> mob:ender_dragon/always
#
# always action
#
# @within mob:tick/always/tick

# spawn
    execute unless entity @s[tag=already_spawned] run function asset:mob/ender_dragon/spawn/

# act
    execute if entity @a[distance=..256,predicate=!player:is_player_exception] run function asset:mob/ender_dragon/action/

# crystal regeneration
    execute if entity @e[type=end_crystal,distance=..48] if score @s mob.max_health > @s mob.health run scoreboard players add @s mob.health 2
    execute if entity @e[type=end_crystal,distance=..48] if score @s mob.max_health >= @s mob.health if predicate lib:periodic/20 run function health_display:update