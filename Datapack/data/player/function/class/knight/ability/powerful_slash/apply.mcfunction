#> player:class/knight/ability/powerful_slash/damage
#
# damage process
#
# @within player:class/knight/bility/powerful_slash/do

# damage
    $damage @s $(damage) lib:bypasses_player_attack by @p[tag=player.attacker]
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1.0 1.0 0.0
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1.0 1.0 0.0