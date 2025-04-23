#> player:class/knight/bility/powerful_slash/apply
#
# damage process
#
# @within player:class/knight/bility/powerful_slash/do

# damage
    $damage @s $(damage) lib:bypasses_player_attack by @p[tag=this]
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1.0 1.0 0.0