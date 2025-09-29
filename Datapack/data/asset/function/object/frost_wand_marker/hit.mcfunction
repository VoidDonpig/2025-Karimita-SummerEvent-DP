#> asset:object/frost_wand_marker/hit
#
# hit
#
# @within asset:object/frost_wand_marker/

# damage
    tag @s add asset.this
    execute as @a if score @s player.id = @n[type=marker,tag=asset.this] player.id run tag @s add this
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:mob,dx=1.5,dy=1.5,dz=1.5] run function asset:item/magic_damage with entity @n[type=marker,tag=asset.this] data.asset.magic
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:mob,dx=1.5,dy=1.5,dz=1.5] run effect give @s slowness 5 1

# sfx
    particle block{block_state:ice} ~ ~ ~ 0.4 0.4 0.4 0.1 256 force @a[distance=..32]
    playsound block.glass.break neutral @a ~ ~ ~ 1 0.75

# reset
    tag @p[tag=this] remove this
    tag @s remove asset.this

# kill
    kill @s