#> player:faint/wakeup
#
# wakeup
#
# @within player:faint/revive

# revive
    kill @n[type=mannequin,tag=faint_mannequin.this]
    gamemode survival @s

# reset
    scoreboard players reset @s player.revive_timer
    scoreboard players reset @s player.death_timer