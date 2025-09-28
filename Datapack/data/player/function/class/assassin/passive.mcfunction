#> player:class/assassin/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players set $max_health temporary 10
    scoreboard players set $attack_damage temporary 3
    execute if predicate asset:weapon/melee/daggers run scoreboard players set $attack_damage temporary 6
    scoreboard players set $movement_speed temporary 1
    scoreboard players set $attack_speed temporary 1
    scoreboard players set $ferocity temporary 1
    scoreboard players set $safe_fall_distance temporary 40

    scoreboard players operation $max_health temporary *= @s class.assassin.level
    scoreboard players operation $attack_damage temporary *= @s class.assassin.level
    scoreboard players operation $movement_speed temporary *= @s class.assassin.level
    scoreboard players operation $attack_speed temporary *= @s class.assassin.level
    scoreboard players operation $ferocity temporary *= @s class.assassin.level
    scoreboard players operation $safe_fall_distance temporary *= @s class.assassin.level

# dagger master
    execute if predicate asset:weapon/melee/daggers run scoreboard players add @s attack_range 200
    execute if predicate asset:weapon/melee/daggers run scoreboard players set $attack_range temporary 6
    execute if predicate asset:weapon/melee/daggers run scoreboard players operation $attack_range temporary *= @s class.assassin.level

# apply
    scoreboard players operation @s max_health += $max_health temporary
    scoreboard players operation @s attack_damage += $attack_damage temporary
    scoreboard players operation @s movement_speed += $movement_speed temporary
    scoreboard players operation @s attack_speed += $attack_speed temporary
    scoreboard players operation @s ferocity += $ferocity temporary
    scoreboard players operation @s safe_fall_distance += $safe_fall_distance temporary
    scoreboard players operation @s attack_range += $attack_range temporary

# reset
    scoreboard players reset $max_health temporary
    scoreboard players reset $attack_damage temporary
    scoreboard players reset $movement_speed temporary
    scoreboard players reset $attack_speed temporary
    scoreboard players reset $ferocity temporary
    scoreboard players reset $safe_fall_distance temporary
    scoreboard players reset $attack_range temporary