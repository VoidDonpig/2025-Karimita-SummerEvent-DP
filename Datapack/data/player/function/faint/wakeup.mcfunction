#> player:faint/wakeup
#
# wakeup
#
# @within player:faint/revive

# revive
    execute as @n[type=mannequin,tag=faint_mannequin.this] run function lib:vanish/
    gamemode survival @s

# reset
    scoreboard players reset @s player.revive_timer
    scoreboard players reset @s player.death_timer