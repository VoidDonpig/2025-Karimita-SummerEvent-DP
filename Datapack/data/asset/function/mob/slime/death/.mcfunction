#> asset:mob/slime/death/
#
# death event
#
# @within mob:death/run

# loot
    execute if data entity @s {DeathTime:1s} run summon item ~ ~ ~ {Item:{id:slime_ball}}

# vanish
    execute if data entity @s {DeathTime:19s} run tp @s ~ -1000 ~