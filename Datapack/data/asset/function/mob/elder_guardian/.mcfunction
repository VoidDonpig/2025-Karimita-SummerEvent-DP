#> asset:mob/elder_guardian/
#
# tick
#
# @within mob:tick/tick/tick

# add tag
    execute on target run tag @s add target

# manage timer
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1
    scoreboard players add @s ai_timer.3 1

# charge attack
    # freeze
        execute if score @s ai_timer.1 matches 1 run function asset:mob/elder_guardian/action/charge/freeze
    # facing target
        execute if score @s ai_timer.1 matches 1..10 run tp @s ~ ~ ~ facing entity @n[tag=target] eyes
    # charging attack
        execute if score @s ai_timer.1 matches 1..19 positioned ~ ~1.0 ~ run function asset:mob/elder_guardian/action/charge/charging
    # charge
        execute if score @s ai_timer.1 matches 20..40 run function asset:mob/elder_guardian/action/charge/
    # unfreeze
        execute if score @s ai_timer.1 matches 40 run function asset:mob/elder_guardian/action/charge/unfreeze

# shard of prismarine
    execute if score @s ai_timer.1 matches 41.. if score @s ai_timer.2 matches 1 positioned ~ ~1.0 ~ run function asset:mob/elder_guardian/action/shard_of_prismarine/

# empowered beam
    # first sound
        execute if score @s ai_timer.1 matches 41.. if score @s ai_timer.3 matches 1 positioned ~ ~1.0 ~ run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..16] ~ ~ ~ 2 2 0
    # charging event
        execute if score @s ai_timer.1 matches 41.. if score @s ai_timer.3 matches 1..20 positioned ~ ~1.0 ~ run function asset:mob/elder_guardian/action/empowered_beam/charging
    # beam
        execute if score @s ai_timer.1 matches 41.. if score @s ai_timer.3 matches 21 positioned ~ ~1.0 ~ run function asset:mob/elder_guardian/action/empowered_beam/

# reset
    execute if score @s ai_timer.1 matches 400.. run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.2 matches 20.. run scoreboard players reset @s ai_timer.2
    execute if score @s ai_timer.3 matches 40.. run scoreboard players reset @s ai_timer.3

    tag @e[tag=target] remove target