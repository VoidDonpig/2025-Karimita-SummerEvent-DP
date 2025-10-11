#> asset:mob/insanity_wither/action/charge/move
#
# move
#
# @within asset:mob/insanity_wither/action/charge/

# detect moiving
    execute on vehicle at @s if function asset:mob/insanity_wither/collision_check run rotate @s ~ 0
    execute on vehicle at @s if function asset:mob/insanity_wither/collision_check run scoreboard players set @s ai_timer.1 30

# slide
    execute on vehicle at @s facing entity @n[tag=target] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-150 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~

# interval
    scoreboard players operation $interval temporary = @s ai_timer.1

# sound
    scoreboard players operation $interval temporary %= $2 constant
    execute if score $interval temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.2
    execute if score $interval temporary matches 0 run function asset:mob/insanity_wither/action/wither_frenzy/
    scoreboard players reset $interval temporary