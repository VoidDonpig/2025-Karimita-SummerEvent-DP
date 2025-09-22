#> player:status/dungeon/apply
#
# apply multiplier
#
# @within player:status/dungeon/

# apply
    $attribute @s max_health modifier add player:dungeon.max_health $(max_health) add_multiplied_base
    $attribute @s attack_damage modifier add player:dungeon.attack_damage $(attack_damage) add_multiplied_base