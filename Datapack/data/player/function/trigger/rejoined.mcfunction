#> player:trigger/rejoined
#
# rejoin
#
# @within player:tick

# reset death
    scoreboard players reset @s player.death_timer
    scoreboard players reset @s player.revive_timer

# set gamemode
    execute unless entity @s[tag=resistentia.admin_authed_by_a675a99c-635e-414f-9dc5-b203d1c03e8e] run gamemode survival

# tp
    execute unless score @s player.death_timer = @s player.death_timer if predicate world:is_in_dungeon run function world:dungeon/exit/

# invul
    scoreboard players set @s player.invul_timer 200

# statusupdate
    tag @s add statusupdate

# reset
    scoreboard players reset @s player.rejoined