#> player:advancement_tick
#
# advancement tick
#
# @handles advancement player:tick

# revoke
    advancement revoke @s only player:tick

# get health
    scoreboard players operation @s new_health = @s health

    execute if score @s new_health < @s old_health run scoreboard players set @s health_updated 0
    execute if score @s new_health > @s old_health run scoreboard players set @s health_updated 1
    execute unless score @s new_health = @s old_health run tag @s add health_updated
    execute unless score @s new_health = @s old_health run scoreboard players set @s health_update_timer 9

    scoreboard players operation @s old_health = @s health

# belowname
    function player:belowname/

# reset
    tag @s remove health_updated