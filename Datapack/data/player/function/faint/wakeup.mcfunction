#> player:faint/wakeup
#
# wakeup
#
# @within player:faint/revive

# revive
    gamemode survival @s
    ride @s dismount
    execute as @n[type=mannequin,tag=faint_mannequin.this] run function lib:vanish/

# invul
    scoreboard players set @s player.invul_timer 100

# reset
    scoreboard players reset @s player.revive_timer
    scoreboard players reset @s player.death_timer