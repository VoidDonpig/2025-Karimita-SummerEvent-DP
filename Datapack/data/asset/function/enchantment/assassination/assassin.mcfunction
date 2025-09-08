#> asset:enchantment/assassination/assassin
#
# assassin
#
# @within asset:enchantment/assassination/

# random
    scoreboard players set $assassination_chance temporary 10
    scoreboard players operation $assassination_chance temporary += @s class.assassin.level

    execute store result score $roll temporary run random value 0..999

# kill
    execute if score $assassination_chance temporary >= $roll temporary at @n[tag=mob.victim] run function asset:enchantment/assassination/kill

# reset
    scoreboard players reset $assassination_chance temporary
    scoreboard players reset $roll temporary