#> asset:mob/ghast/action/sorrow_aura/
#
# sorrow aura
#
# @within asset:mob/ghast/

# summon marker
    summon marker ~ ~ ~ {Tags:["asset","sorrow_aura","not_init"],data:{asset:{id:sorrow_aura}}}

# set data
    execute as @n[tag=sorrow_aura,tag=not_init] at @s run rotate @s facing entity @n[tag=target]
    tag @n[tag=sorrow_aura,tag=not_init] remove not_init

# sfx
    playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 4 0.7 0