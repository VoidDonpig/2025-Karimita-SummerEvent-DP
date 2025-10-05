#> world:dungeon/exit/
#
# exit dungeon
#
# @within world:dungeon/exit/tick

# effect reset
    effect clear @s
    effect give @s instant_health 5 14 true
    effect give @s saturation 5 14 true

# gamemode
    gamemode adventure

# tp to home
    function world:dungeon/exit/respawn/
    execute in world:hub run tp @s 0 63 0 0 0
    execute in world:hub run playsound block.beacon.power_select master @s 0 63 0 0.8 1.1