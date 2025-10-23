#> asset:object/flame_wand_marker/hit
#
# hit
#
# @within asset:object/flame_wand_marker/

# damage
    tag @s add asset.this
    execute as @a if score @s player.id = @n[type=marker,tag=asset.this] player.id run tag @s add this
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:mob,dx=1.5,dy=1.5,dz=1.5] run function asset:item/magic_damage with entity @n[type=marker,tag=asset.this] data.asset.magic
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:mob,dx=1.5,dy=1.5,dz=1.5] run data modify entity @s Fire set value 100s

# sfx
    particle lava ~ ~ ~ 0.4 0.4 0.4 0.1 32 normal
    playsound entity.firework_rocket.blast neutral @a[distance=..16] ~ ~ ~ 1 0.5

# reset
    tag @p[tag=this] remove this
    tag @s remove asset.this

# kill
    kill @s