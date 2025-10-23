#> asset:item/frost_wand/do
#
# do
#
# @within asset:item/frost_wand/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# cooltime
    scoreboard players set @s frost_wand_cooltime 40

# damage
    function asset:item/frost_wand/get_data

    function asset:item/magic_damage_scaling

# summon marker
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["asset","frost_wand_marker","not_init"],data:{asset:{id:frost_wand_marker}}}
    tag @s add player.this
    scoreboard players operation @n[type=marker,tag=frost_wand_marker,tag=not_init] player.id = @p[tag=player.this] player.id
    execute store result entity @n[type=marker,tag=frost_wand_marker,tag=not_init] data.asset.magic.damage int 1 run scoreboard players get $damage temporary
    data modify entity @n[type=marker,tag=frost_wand_marker,tag=not_init] Rotation set from entity @p[tag=player.this] Rotation
    tag @n[type=marker,tag=frost_wand_marker,tag=not_init] remove not_init

# playsound
    playsound block.glass.break neutral @a[distance=..16] ~ ~ ~ 1 1

# reset
    tag @s remove player.this
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary