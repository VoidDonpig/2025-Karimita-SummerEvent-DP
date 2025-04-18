#> mob:death/loot/normal
#
# loot exp
#
# @within mob:death/loot/

# loot
    execute store result score $exp_loot temporary run data get entity @s data.mob.loot.exp
    execute on attacker if entity @s[type=minecraft:player] run tag @s add this
    scoreboard players operation @p[tag=this] exp_queue.combat += $exp_loot temporary
    execute if score $exp_loot temporary matches 1.. run playsound minecraft:entity.experience_orb.pickup player @p[tag=this] ~ ~ ~ 1.0 2.0 0

# reset
    execute as @a[tag=this] run tag @s remove this
    scoreboard players reset $exp_loot temporary