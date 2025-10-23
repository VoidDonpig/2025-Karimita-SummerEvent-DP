#> asset:mob/wither_skeleton/action/skull_shot/
#
# skull shot
#
# @within asset:mob/wither_skeleton/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0.4 16 normal
    playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2

# summon skull
    execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {data:{asset:{id:wither_skeleton_skull}},Tags:["skull_shot.wither_skeleton.object","autokill","asset"],transformation:[-1.0000f,0.0000f,0.0000f,0.0000f, 0.0000f,1.0000f,0.0000f,0.15625f, -0.0000f,0.0000f,-1.0000f,0.0000f, 0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1,item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;2020027704,77483716,-1116895772,706132550],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI3OTVjM2M2ZjM2ZDY3ZGVjZjlhMzE5NWUxMjgwNDBiZWM1MjI2YjA1NWYyYjE2ZDQ2ZmExOWE5MTgwZTAyMyJ9fX0="}]}}},CustomName:'ウィザースケルトンの頭蓋骨'}

# autokill timer
    execute anchored eyes positioned ^ ^ ^ run scoreboard players set @n[type=item_display,tag=skull_shot.wither_skeleton.object,tag=!already_init] autokill_timer 80
    
# summon marker
    summon marker ~ ~ ~ {Tags:["skull_shot.wither_skeleton.object.set_rotation"]}

# set marker rotation
    execute as @n[type=marker,tag=skull_shot.wither_skeleton.object.set_rotation] at @s facing entity @n[tag=target] feet run tp @s ~ ~ ~ ~ ~

# set rotation
    data modify entity @n[type=item_display,tag=skull_shot.wither_skeleton.object,tag=!already_init] Rotation set from entity @n[tag=skull_shot.wither_skeleton.object.set_rotation] Rotation

# add tag to object
    tag @n[type=item_display,tag=skull_shot.wither_skeleton.object,tag=!already_init] add already_init

# kill marker
    kill @n[type=marker,tag=skull_shot.wither_skeleton.object.set_rotation]