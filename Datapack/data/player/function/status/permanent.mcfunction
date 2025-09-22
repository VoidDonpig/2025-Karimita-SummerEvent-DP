#> player:status/permanent
#
# permanent status
#
# @within player:status/update

# class
    scoreboard players set $knight_max_health temporary 10
    scoreboard players operation $knight_max_health temporary *= @s class.knight.level
    scoreboard players set $knight_attack_range temporary 2
    scoreboard players operation $knight_attack_range temporary *= @s class.knight.level
    scoreboard players set $assassin_attack_damage temporary 1
    scoreboard players operation $assassin_attack_damage temporary *= @s class.assassin.level
    scoreboard players set $assassin_movement_speed temporary 1
    scoreboard players operation $assassin_movement_speed temporary *= @s class.assassin.level
    scoreboard players set $archer_arrow_damage_increase temporary 1
    scoreboard players operation $archer_arrow_damage_increase temporary *= @s class.assassin.level
    scoreboard players operation $archer_arrow_damage_increase temporary /= $2 constant
    scoreboard players set $wizard_max_mana temporary 5
    scoreboard players operation $wizard_max_mana temporary *= @s class.wizard.level
    scoreboard players set $wizard_ability_damage temporary 1
    scoreboard players operation $wizard_ability_damage temporary *= @s class.wizard.level
    scoreboard players set $healer_max_mana temporary 1
    scoreboard players operation $healer_max_mana temporary *= @s class.healer.level
    scoreboard players set $healer_luck temporary 1
    scoreboard players operation $healer_luck temporary *= @s class.healer.level

# apply
    scoreboard players operation @s max_health += $knight_max_health temporary
    scoreboard players operation @s attack_range += $knight_attack_range temporary
    scoreboard players operation @s attack_damage += $assassin_attack_damage temporary
    scoreboard players operation @s movement_speed += $assassin_movement_speed temporary
    scoreboard players operation @s arrow_damage_increase += $archer_arrow_damage_increase temporary
    scoreboard players operation @s max_mana += $wizard_max_mana temporary
    scoreboard players operation @s ability_damage += $wizard_ability_damage temporary
    scoreboard players operation @s max_mana += $healer_max_mana temporary
    scoreboard players operation @s luck += $healer_luck temporary

# reset
    scoreboard players reset $knight_max_health temporary
    scoreboard players reset $knight_attack_range temporary
    scoreboard players reset $assassin_attack_damage temporary
    scoreboard players reset $assassin_movement_speed temporary
    scoreboard players reset $archer_arrow_damage_increase temporary
    scoreboard players reset $wizard_max_mana temporary
    scoreboard players reset $wizard_ability_damage temporary
    scoreboard players reset $healer_max_mana temporary
    scoreboard players reset $healer_luck temporary