#> player:class/healer/ability/healing_circle/
#
# healing circle process
#
# @within player:class/healer/

# circle
    scoreboard players set $radius temporary 4
    scoreboard players operation $radius temporary *= @s class.healer.level
    execute store result storage player: healing_circle.radius double 0.01 run scoreboard players add $radius temporary 250

# parcicle
    execute rotated 0 0 run function player:class/healer/ability/healing_circle/circle with storage player: healing_circle

# effect
    function player:class/healer/ability/healing_circle/effect with storage player: healing_circle

# reset
    scoreboard players reset $radius temporary
    data remove storage player: healing_circle
    execute if score @s class.healer.level matches 1..14 run scoreboard players set @s healing_circle_timer 40
    execute if score @s class.healer.level matches 15..39 run scoreboard players set @s healing_circle_timer 30
    execute if score @s class.healer.level matches 40.. run scoreboard players set @s healing_circle_timer 20