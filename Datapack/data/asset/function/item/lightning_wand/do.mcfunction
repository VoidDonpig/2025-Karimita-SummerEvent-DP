#> asset:item/lightning_wand/do
#
# do
#
# @within asset:item/lightning_wand/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# cooltime
    scoreboard players set @s lightning_wand_cooltime 60

# damage
    function asset:item/lightning_wand/get_data

    function asset:item/magic_damage_scaling
    execute store result storage asset: __temp__.damage int 1 run scoreboard players get $damage temporary

# summon marker
    tag @s add player.this
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["asset","lightning_wand_marker"],data:{asset:{id:lightning_wand_marker}}}
    data modify entity @n[type=marker,tag=lightning_wand_marker] Rotation set from entity @p[tag=player.this] Rotation
    execute as @n[type=marker,tag=asset,tag=lightning_wand_marker] at @s run function asset:item/lightning_wand/marker_teleport

# damage entity
    tag @s add this
    execute as @e[type=#lib:mob,tag=hit] run function asset:item/magic_damage with storage asset: __temp__
    tag @s remove this

# playsound
    playsound entity.lightning_bolt.thunder neutral @a[distance=..16] ~ ~ ~ 1 2

# reset
    tag @s remove player.this
    tag @e[type=#lib:mob,tag=hit] remove hit
    data remove storage asset: __temp__
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary