#> asset:mob/wither/action/nuclear_explosion/
#
# nuclear explosion
#
# @context wither action

# deadly attack
    tag @s add this
    execute positioned ~-5 ~-5 ~-5 as @e[type=#lib:all,type=!#lib:undead,dx=9,dy=9,dz=9] run damage @s 1024.0 minecraft:explosion by @n[tag=this]
    particle minecraft:explosion_emitter ~ ~ ~ 2.5 2.5 2.5 0 16 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:soul_fire_flame ~ ~ ~ 0.4 1.2 0.4 0.3 32 normal
    playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 2 0.5 0
    tag @s remove this