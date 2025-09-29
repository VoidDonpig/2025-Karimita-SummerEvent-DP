#> asset:item/flame_wand/do
#
# do
#
# @within asset:item/flame_wand/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# cooltime
    scoreboard players set @s flame_wand_cooltime 10

# damage
    function asset:item/flame_wand/get_data

    function asset:item/magic_damage_scaling

# summon marker
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["asset","flame_wand_marker","not_init"],data:{asset:{id:flame_wand_marker}}}
    tag @s add player.this
    scoreboard players operation @n[type=marker,tag=flame_wand_marker,tag=not_init] player.id = @p[tag=player.this] player.id
    execute store result entity @n[type=marker,tag=flame_wand_marker,tag=not_init] data.asset.magic.damage int 1 run scoreboard players get $damage temporary
    data modify entity @n[type=marker,tag=flame_wand_marker,tag=not_init] Rotation set from entity @p[tag=player.this] Rotation
    tag @n[type=marker,tag=flame_wand_marker,tag=not_init] remove not_init

# playsound
    playsound item.firecharge.use neutral @a ~ ~ ~ 1 2

# reset
    tag @s remove player.this
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary