#> player:trigger/in_ender_dragon_battle/check
#
# when in boss battle check
#
# @within player:

# join
    execute if predicate {"condition": "location_check",predicate:{dimension:"the_end"}} if entity @s[tag=!player.in_ender_dragon_battle] if entity @n[type=ender_dragon,distance=..256] run function player:trigger/in_ender_dragon_battle/join

# tick
    execute if entity @s[tag=player.in_ender_dragon_battle] run function player:trigger/in_ender_dragon_battle/

# leave
    execute if entity @s[tag=player.in_ender_dragon_battle] unless entity @n[type=ender_dragon,distance=..256] run function player:trigger/in_ender_dragon_battle/leave