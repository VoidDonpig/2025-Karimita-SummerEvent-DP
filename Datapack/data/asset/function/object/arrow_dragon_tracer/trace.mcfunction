#> asset:object/arrow_dragon_tracer/trace
#
# trace dragon
#
# @within asset:object/arrow_dragon_tracer/

# trace
    execute facing entity @n[type=ender_dragon] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^2.5 ~ ~

# trail
    particle firework ~ ~ ~ 0.0 0.0 0.0 0 1 normal

# hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=ender_dragon,dx=0] run tag @s add hit

# autokill
    scoreboard players add @s autokill_timer 1
    kill @s[scores={autokill_timer=1200..}]