#> asset:mob/slime/death/
#
# death event
#
# @within mob:death/run

# timer
    scoreboard players add @s death_timer.1 1

# loot
    execute if score @s death_timer.1 matches 1 run loot spawn ~ ~ ~ loot entities/slime

# vanish
    execute if score @s death_timer.1 matches 19 run function lib:vanish/