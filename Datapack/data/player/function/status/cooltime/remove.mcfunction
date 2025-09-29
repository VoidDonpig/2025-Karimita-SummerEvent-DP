#> player:status/cooltime/remove
#
# remove cooltime
#
# @within player:tick

# remove cooltime
    scoreboard players remove @s[scores={flame_wand_cooltime=1..}] flame_wand_cooltime 1
    scoreboard players remove @s[scores={frost_wand_cooltime=1..}] frost_wand_cooltime 1
    scoreboard players remove @s[scores={lightning_wand_cooltime=1..}] lightning_wand_cooltime 1
    scoreboard players remove @s[scores={healing_wand_cooltime=1..}] healing_wand_cooltime 1
    scoreboard players remove @s[scores={eternal_carrot_cooltime=1..}] eternal_carrot_cooltime 1

# reset cooltime
    scoreboard players reset @s[scores={flame_wand_cooltime=..0}] flame_wand_cooltime
    scoreboard players reset @s[scores={frost_wand_cooltime=..0}] frost_wand_cooltime
    scoreboard players reset @s[scores={lightning_wand_cooltime=..0}] lightning_wand_cooltime
    scoreboard players reset @s[scores={healing_wand_cooltime=..0}] healing_wand_cooltime
    execute unless score @s eternal_carrot_cooltime matches 1.. if items entity @s container.* *[custom_data~{custom_item_id:"eternal_carrot_eaten"}] run function asset:item/eternal_carrot/reset
    execute unless score @s eternal_carrot_cooltime matches 1.. if items entity @s weapon.offhand *[custom_data~{custom_item_id:"eternal_carrot_eaten"}] run function asset:item/eternal_carrot/offhand