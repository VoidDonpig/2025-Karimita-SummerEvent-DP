#> asset:mob/warden/action/phase01
#
# phase02
#
# @within asset:mob/warden/always

# manage timer
    scoreboard players add @s ai_timer.1 1

# doomed explosion
    execute if predicate lib:periodic/10 run function asset:mob/warden/action/doomed_explosion/

# catastrophic sonic ray
    # charging
        execute if score @s ai_timer.1 matches 200..300 run function asset:mob/warden/action/catastrophic_sonic_ray/charging
    # rotate
        execute if score @s ai_timer.1 matches 300..400 store result entity @s Rotation[0] int 1 run random value -180..180
        execute if score @s ai_timer.1 matches 300..400 store result entity @s Rotation[1] int 1 run random value -80..0
    # sonic boom
        execute if score @s ai_timer.1 matches 300..400 positioned ~ ~1.5 ~ run function asset:mob/warden/action/catastrophic_sonic_ray/sonic_boom

# eradication
    # NoAI NoGravity set data
        execute if score @s ai_timer.1 matches 600 run data modify entity @s NoAI set value 1b
        execute if score @s ai_timer.1 matches 600 run data modify entity @s NoGravity set value 1b
    # beam
        execute if score @s ai_timer.1 matches 600..800 run rotate @s ~1 0
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~ ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~45 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~90 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~135 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~180 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~225 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~270 ~ run function asset:mob/warden/action/eradication/beam
        execute if score @s ai_timer.1 matches 600..800 positioned ~ ~ ~ rotated ~315 ~ run function asset:mob/warden/action/eradication/beam
    # reset
        execute if score @s ai_timer.1 matches 800 run data modify entity @s NoAI set value 0b
        execute if score @s ai_timer.1 matches 800 run data modify entity @s NoGravity set value 0b

# reset
    scoreboard players reset @s[scores={ai_timer.1=800..}] ai_timer.1