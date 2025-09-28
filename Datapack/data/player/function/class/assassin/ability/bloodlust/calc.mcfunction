#> player:class/assassin/ability/bloodlust/calc
#
# calc
#
# @within player:status/update

# calc
    scoreboard players add $bloodlust_strength temporary 200
    scoreboard players add $bloodlust_strength_add temporary 4
    scoreboard players operation $bloodlust_strength_add temporary *= @s class.assassin.level
    scoreboard players operation $bloodlust_strength_add temporary *= @s bloodlust_count

    execute store result storage player: __temp__.attack_damage float 0.001 run scoreboard players operation $bloodlust_strength temporary += $bloodlust_strength_add temporary

    scoreboard players operation $bloodlust_strength temporary /= $10 constant
    scoreboard players operation @s arrow_damage_increase += $bloodlust_strength temporary

# apply
    # trim
        data modify storage player: __temp__.attack_damage set string storage player: __temp__.attack_damage 0 -1
    # apply
        function player:class/assassin/ability/bloodlust/apply with storage player: __temp__

# reset
    scoreboard players reset $bloodlust_strength temporary
    scoreboard players reset $bloodlust_strength_add temporary
    data remove storage player: __temp__