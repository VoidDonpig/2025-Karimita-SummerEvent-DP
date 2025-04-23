#> player:class/healer/
#
# healer process
#
# @within player:tick

# healing aura
    execute unless score @s healing_aura_timer matches 1.. run function player:class/healer/ability/healing_aura/

# healing circle
    execute unless score @s healing_circle_timer matches 1.. if predicate lib:stopping run function player:class/healer/ability/healing_circle/

# wish
    execute if predicate player:is_sneaking unless score @s wish_cooltime matches 1.. run function player:class/healer/ability/wish/

# cooltime
    execute if score @s wish_cooltime matches 1.. run scoreboard players remove @s wish_cooltime 1
    execute if score @s wish_cooltime matches 0 run scoreboard players reset @s wish_cooltime
    execute if score @s healing_aura_timer matches 1.. run scoreboard players remove @s healing_aura_timer 1
    execute if score @s healing_aura_timer matches 0 run scoreboard players reset @s healing_aura_timer
    execute if score @s healing_circle_timer matches 1.. run scoreboard players remove @s healing_circle_timer 1
    execute if score @s healing_circle_timer matches 0 run scoreboard players reset @s healing_circle_timer