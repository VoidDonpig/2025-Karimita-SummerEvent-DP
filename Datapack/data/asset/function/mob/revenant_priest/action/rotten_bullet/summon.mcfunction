#> asset:mob/revenant_priest/action/rotten_bullet/summon
#
# rotten bullet
#
# @within asset:mob/revenant_priest/action/rotten_bullet/

# sfx
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 2 0.7 0
    playsound entity.zombie.infect hostile @a ~ ~ ~ 2 0.7 0
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 1.4

# summon marker
    summon marker ~ ~ ~ {data:{asset:{id:rotten_bullet}},Tags:["asset","rotten_bullet","not_init"]}
    tag @s add this
    data modify entity @n[tag=rotten_bullet,tag=not_init] Rotation set from entity @n[tag=this] Rotation
    tag @s remove this