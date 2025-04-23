#> player:status/cooltime/remove
#
# remove  cooltime
#
# @within player:tick

# remove cooltime
    scoreboard players remove @s[scores={flame_wand_cooltime=1..}] flame_wand_cooltime 1
    scoreboard players remove @s[scores={flost_wand_cooltime=1..}] flost_wand_cooltime 1
    scoreboard players remove @s[scores={lightning_wand_cooltime=1..}] lightning_wand_cooltime 1
    scoreboard players remove @s[scores={healing_wand_cooltime=1..}] healing_wand_cooltime 1

# reset cooltime
    scoreboard players reset @s[scores={flame_wand_cooltime=..0}] flame_wand_cooltime
    scoreboard players reset @s[scores={flost_wand_cooltime=..0}] flost_wand_cooltime
    scoreboard players reset @s[scores={healing_wand_cooltime=..0}] healing_wand_cooltime