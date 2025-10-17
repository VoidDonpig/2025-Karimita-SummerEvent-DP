#> player:faint/respawn/macro
#
# macro
#
# @within player:faint/respawn/

# respawn
    $execute in $(dimension) run spawnpoint @s $(x) $(y) $(z)

# gamemode
    gamemode survival

# heal all
    scoreboard players operation @s mana = @s max_mana
    effect give @s instant_health 80 14 true
    effect give @s saturation 80 14 true

# invul
    scoreboard players set @s player.invul_timer 80
     
# tp
    $execute in $(dimension) run tp @s $(x) $(y) $(z)