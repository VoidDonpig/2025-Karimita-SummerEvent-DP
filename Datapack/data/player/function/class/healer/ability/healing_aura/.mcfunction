#> player:class/healer/ability/healing_aura/
#
# healing aura process
#
# @within player:class/healer/

# healing
    scoreboard players set $radius temporary 32
    scoreboard players operation $radius temporary *= @s class.healer.level
    execute store result storage player: healing_aura.radius double 0.01 run scoreboard players add $radius temporary 1600
    function player:class/healer/ability/healing_aura/effect with storage player: healing_aura

# reset
    scoreboard players set @s healing_aura_timer 20
    scoreboard players reset $radius temporary
    data remove storage player: healing_aura