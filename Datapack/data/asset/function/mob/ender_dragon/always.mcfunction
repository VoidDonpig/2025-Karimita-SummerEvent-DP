#> mob:ender_dragon/always
#
# always action
#
# @within mob:tick/always/tick


# act
    function asset:mob/ender_dragon/action/

# crystal regeneration
    execute if entity @e[type=end_crystal,distance=..32] if score @s mob.max_health > @s mob.health run scoreboard players add @s mob.health 1
    execute if entity @e[type=end_crystal,distance=..32] if score @s mob.max_health > @s mob.health run function health_display:update