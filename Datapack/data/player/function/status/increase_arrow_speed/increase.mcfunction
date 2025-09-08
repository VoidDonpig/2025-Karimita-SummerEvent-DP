#> player:status/increase_arrow_speed/increase
#
# increase arrow speed
#
# @within player:status/increase_arrow_speed/

# get original speed and modify
    $execute in world:admin_area store result score $temp_x temporary run data get entity @s Motion[0] $(x)000000
    $execute in world:admin_area store result score $temp_y temporary run data get entity @s Motion[1] $(x)000000
    $execute in world:admin_area store result score $temp_z temporary run data get entity @s Motion[2] $(x)000000

# insert modified speed
    execute store result entity @s Motion[0] double 0.00000001 run scoreboard players get $temp_x temporary
    execute store result entity @s Motion[1] double 0.00000001 run scoreboard players get $temp_y temporary
    execute store result entity @s Motion[2] double 0.00000001 run scoreboard players get $temp_z temporary

# reset
    scoreboard players reset $temp_x temporary
    scoreboard players reset $temp_y temporary
    scoreboard players reset $temp_z temporary