#> world:dungeon/exit/
#
# exit dungeon
#
# @within world:dungeon/exit/tick

# effect reset
    effect clear @s
    effect give @s instant_health 5 14 true
    effect give @s saturation 5 14 true

# tp to home
    execute in world:hub run spawnpoint @s 0 63 0
    execute in world:hub run tp @s 0 63 0 0 0
    execute in world:hub run playsound block.beacon.power_select master @s 0 63 0 0.2 1.1