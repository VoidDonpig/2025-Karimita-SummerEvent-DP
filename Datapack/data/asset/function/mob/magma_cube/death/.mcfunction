#> asset:mob/magma_cube/death/
#
# death event
#
# @within mob:death/run

# loot
    execute if data entity @s {DeathTime:1s} run loot spawn ~ ~ ~ loot entities/magma_cube

# vanish
    execute if data entity @s {DeathTime:19s} run tp @s ~ -1000 ~