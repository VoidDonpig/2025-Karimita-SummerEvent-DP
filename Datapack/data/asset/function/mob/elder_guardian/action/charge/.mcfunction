#> asset:mob/elder_guardian/action/charge/
#
# charge
#
# @within asset:mob/elder_guardian/action/charge/

# attack
    tag @s add attacker
    execute if block ^-1 ^ ^1 #lib:not_solid if block ^-1 ^1 ^1 #lib:not_solid if block ^1 ^ ^1 #lib:not_solid if block ^1 ^1 ^1 #lib:not_solid run tp @s ^ ^ ^1.0
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @a[dx=4,dy=4,dz=4] at @s run damage @s 10.0 minecraft:mob_attack by @n[tag=attacker]

# stick
    execute positioned ~-1 ~-1 ~-1 as @a[dz=1,dy=1,dx=1] at @s run tp @s @n[tag=attacker]

# sfx
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1 0
    playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 2 2 0

# reset
    tag @s remove attacker