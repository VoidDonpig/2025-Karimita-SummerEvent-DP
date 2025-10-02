#> player:class/assassin/ability/vicacious_ferocity/fail
#
# fail
#
# @within player:class/assassin/ability/vicacious_ferocity/health_check

# calc
    scoreboard players operation $int temporary = $needed_health temporary
    scoreboard players operation $int temporary /= $100 constant

    scoreboard players operation $float temporary = $needed_health temporary
    scoreboard players operation $remove_int temporary = $int temporary
    scoreboard players operation $remove_int temporary *= $100 constant
    scoreboard players operation $float temporary -= $remove_int temporary

# fail
    tellraw @s [{"text": "体力が足りない！","color": "red"},{"text": "(必要体力: ","color": "gray"},{"score": {"name": "$int","objective": "temporary"},"color": "red"},{"text": ".","color": "red"},{"score": {"name": "$float","objective": "temporary"},"color": "red"},{"text": ")","color": "gray"}]
    playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 1.0 0.6 0.0

# reset
    scoreboard players reset $int temporary
    scoreboard players reset $float temporary
    scoreboard players reset $remove_int temporary