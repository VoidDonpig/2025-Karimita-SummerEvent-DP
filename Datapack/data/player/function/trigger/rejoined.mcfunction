#> player:trigger/rejoined
#
# rejoin
#
# @within player:tick

# reset death
    scoreboard players reset @s player.death_timer
    scoreboard players reset @s player.revive_timer

# set gamemode
    execute unless entity @s[tag=mita_winter_event.admin_authed_by_a675a99c-635e-414f-9dc5-b203d1c03e8e] run gamemode survival

# tp
    execute if predicate world:is_in_dungeon in world:hub run spawnpoint @s 0 63 0
    execute if predicate world:is_in_dungeon in world:hub run tp @s 0 63 0

# statusupdate
    tag @s add statusupdate

# reset
    scoreboard players reset @s player.rejoined