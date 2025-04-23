#> mob:death/loot/boss
#
# loot exp
#
# @within mob:death/loot/

# loot
    execute store result score $exp_loot temporary run data get entity @s data.mob.loot.exp
    scoreboard players operation @a[distance=..128] exp_queue.combat += $exp_loot temporary
    execute store result score $exp_loot temporary run data get entity @s data.mob.loot.gold
    scoreboard players operation @a[distance=..128] gold_queue += $exp_loot temporary
    execute as @a[distance=..128] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 2.0 0

# reset
    scoreboard players reset $exp_loot temporary
    scoreboard players reset $gold_loot temporary
    tag @s add already_looted