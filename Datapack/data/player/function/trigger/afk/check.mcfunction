#> player:trigger/afk/check
#
# detect afk
#
# @within player:tick

# add tag
    tag @s add player.is_afk

# afk check
    execute store result score $new_rotation_x temporary run data get entity @s Rotation[0] 1000000
    execute store result score $new_rotation_y temporary run data get entity @s Rotation[1] 1000000

    execute unless score @s old_rotation_x = $new_rotation_x temporary run tag @s remove player.is_afk
    execute unless score @s old_rotation_y = $new_rotation_y temporary run tag @s remove player.is_afk

# add timer
    scoreboard players add @s afk_timer 1

# set old rotation  
    scoreboard players operation @s old_rotation_x = $new_rotation_x temporary
    scoreboard players operation @s old_rotation_y = $new_rotation_y temporary

# tp to afk
    execute if score @s afk_timer matches 12000 in world:afk run tp @s 0 63 0 0 0

# reset
    scoreboard players reset $new_rotation_x temporary
    scoreboard players reset $new_rotation_y temporary