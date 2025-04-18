#> player:class/healer/ability/wish/
#
# wish process
#
# @within player:class/healer/

# calculate radius
    scoreboard players set $radius temporary 32
    scoreboard players operation $radius temporary *= @s class.healer.level
    scoreboard players add $radius temporary 1600
    execute store result storage player: wish.radius float 0.01 run scoreboard players get $radius temporary

    function player:class/healer/ability/wish/do with storage player: wish

# add cooltime
    scoreboard players set @s wish_cooltime 80

# sfx
    playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.0 0.0
    particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0.1 16 force @a

# reset
    scoreboard players reset $radius temporary
    data remove storage player: wish