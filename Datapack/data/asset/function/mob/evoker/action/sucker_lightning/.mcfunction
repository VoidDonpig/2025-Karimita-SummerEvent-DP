#> asset:mob/evoker/action/sucker_lightning/
#
# sucker lightning
#
# @within asset:mob/evoker/

# lightning
    execute positioned as @n[tag=target] run summon lightning_bolt

# effect
    effect give @n[tag=target] blindness 10 1 false
    effect give @n[tag=target] levitation 1 19 false

# sfx
    playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 2 2 0
    execute positioned as @n[tag=target] run playsound block.anvil.place hostile @a ~ ~ ~ 2 2 0
    execute positioned as @n[tag=target] run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 2 2 0

# set timer
    execute if score $difficulty_level world matches 1..4 run scoreboard players set @s ai_timer.2 1200
    execute if score $difficulty_level world matches 5 run scoreboard players set @s ai_timer.2 600