#> player:status/dungeon/
#
# dungeon status increase
#
# @within player:status/update

# increase
    # max health
        scoreboard players set $dungeon_max_health temporary 4
        scoreboard players operation $dungeon_max_health temporary *= @s expertise.dungeon.level
        execute store result storage player: __temp__.max_health float 0.01 run scoreboard players get $dungeon_max_health temporary
        scoreboard players reset $dungeon_max_health temporary
    # attack damage
        scoreboard players set $dungeon_attack_damage temporary 4
        scoreboard players operation $dungeon_attack_damage temporary *= @s expertise.dungeon.level
        execute store result storage player: __temp__.attack_damage float 0.01 run scoreboard players get $dungeon_attack_damage temporary
        scoreboard players reset $dungeon_attack_damage temporary
    # ability damage
        scoreboard players set $dungeon_ability_damage temporary 4
        scoreboard players operation $dungeon_ability_damage temporary *= @s expertise.dungeon.level
        scoreboard players operation $dungeon_ability_damage temporary *= @s ability_damage
        scoreboard players operation $dungeon_ability_damage temporary /= $100 constant
        scoreboard players operation @s ability_damage += $dungeon_ability_damage temporary
        scoreboard players reset $dungeon_ability_damage temporary
    # arrow damage increase
        scoreboard players set $dungeon_arrow_damage_increase temporary 4
        scoreboard players operation $dungeon_arrow_damage_increase temporary *= @s expertise.dungeon.level
        scoreboard players operation @s arrow_damage_increase += $dungeon_arrow_damage_increase temporary
        scoreboard players reset $dungeon_arrow_damage_increase temporary
    # max mana
        scoreboard players set $dungeon_max_mana temporary 4
        scoreboard players operation $dungeon_max_mana temporary *= @s expertise.dungeon.level
        scoreboard players operation $dungeon_max_mana temporary *= @s max_mana
        scoreboard players operation $dungeon_max_mana temporary /= $100 constant
        scoreboard players operation @s max_mana += $dungeon_max_mana temporary
        scoreboard players reset $dungeon_max_mana temporary

# trim
    data modify storage player: __temp__.max_health set string storage player: __temp__.max_health 0 -1
    data modify storage player: __temp__.attack_damage set string storage player: __temp__.attack_damage 0 -1

# apply
    function player:status/dungeon/apply with storage player: __temp__

# reset
    data remove storage player: __temp__