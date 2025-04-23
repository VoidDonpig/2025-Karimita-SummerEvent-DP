#> lib:autokill/autokill_timer/
#
# manage timer
#
# @within lib:autokill/

# manage timer
    scoreboard players remove @s autokill_timer 1
    execute if score @s autokill_timer matches 0 run function lib:vanish/