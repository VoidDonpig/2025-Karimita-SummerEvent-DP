#> asset:mob/zombie/action/throw_axe/
#
# throw axe
#
# @within asset:mob/zombie/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 force @a[distance=..32]
    playsound entity.egg.throw hostile @a ~ ~ ~ 1 1

# summon axe
    execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {data:{asset:{id:wooden_axe}},teleport_duration:1,item:{id:"minecraft:wooden_axe",count:1},transformation:[0.0000f,-0.0000f,-1.0000f,0.0000f,-1.0000f,-0.0000f,-0.0000f,0.0000f,0.0000f,1.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["throw_axe.zombie.object","autokill","asset"],CustomName:{"translate":"item.minecraft.wooden_axe"}}

# autokill timer
    execute anchored eyes positioned ^ ^ ^ run scoreboard players set @n[type=item_display,tag=throw_axe.zombie.object,tag=!already_init] autokill_timer 80
    
# summon marker
    summon marker ~ ~ ~ {Tags:["throw_axe.zombie.object.set_rotation"]}

# set marker rotation
    execute as @n[type=marker,tag=throw_axe.zombie.object.set_rotation] at @s facing entity @n[tag=target] feet run tp @s ~ ~ ~ ~ ~

# set rotation
    data modify entity @n[type=item_display,tag=throw_axe.zombie.object,tag=!already_init] Rotation set from entity @n[tag=throw_axe.zombie.object.set_rotation] Rotation

# add tag to object
    tag @n[type=item_display,tag=throw_axe.zombie.object,tag=!already_init] add already_init

# kill marker
    kill @n[type=marker,tag=throw_axe.zombie.object.set_rotation]