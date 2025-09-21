#> asset:item/flost_wand/do
#
# do
#
# @within asset:item/flost_wand/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# cooltime
    scoreboard players set @s flost_wand_cooltime 40

# damage
    scoreboard players set $damage temporary 4
    scoreboard players set $damage_scaling temporary 30

    function asset:item/magic_damage_scaling

# summon marker
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["asset","flost_wand_marker","not_init"],data:{asset:{id:flost_wand_marker}}}
    tag @s add player.this
    scoreboard players operation @n[type=marker,tag=flost_wand_marker,tag=not_init] player.id = @p[tag=player.this] player.id
    execute store result entity @n[type=marker,tag=flost_wand_marker,tag=not_init] data.asset.magic.damage int 1 run scoreboard players get $damage temporary
    data modify entity @n[type=marker,tag=flost_wand_marker,tag=not_init] Rotation set from entity @p[tag=player.this] Rotation
    tag @n[type=marker,tag=flost_wand_marker,tag=not_init] remove not_init

# playsound
    playsound block.glass.break neutral @a ~ ~ ~ 1 1

# reset
    tag @s remove player.this
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary