#> asset:mob/ender_dragon/action/spawning_egg/lay
#
# lay egg
#
# @within asset:mob/ender_dragon/action/spawning_egg/phase*

# lay egg
    summon falling_block ~ ~ ~ {BlockState:{Name:"dragon_egg"},Time:-2147483648,Glowing:true,DropItem:false,NoGravity:1b,Tags:["asset","spawning_egg_egg.ender_dragon.object","not_init","spawning_egg.ender_dragon.object"],Invulnerable:true}
    summon slime ~ ~ ~ {data:{asset:{id:spawning_egg_hitbox.ender_dragon}},Tags:["not_init","asset","spawning_egg_hitbox.ender_dragon.object","spawning_egg.ender_dragon.object"],DeathLootTable:"asset:empty",Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
    summon armor_stand ~ ~ ~ {data:{asset:{data:{health:10000}}},Tags:["not_init","asset","spawning_egg_armor_stand.ender_dragon.object","spawning_egg.ender_dragon.object"],Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b,CustomNameVisible:1b,Invisible:1b,CustomName:["",{text:"10000",color:"white","bold":true},{text:"❤",color:"red","bold":false}]}
    summon armor_stand ~ ~0.3 ~ {Tags:["not_init","asset","spawning_egg_armor_stand_2.ender_dragon.object","spawning_egg.ender_dragon.object"],Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b,CustomNameVisible:1b,Invisible:1b,CustomName:["",{text:"10.0s",color:"red"}]}

    effect give @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] invisibility infinite 4 true

    attribute @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] max_health base set 1024
    attribute @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] max_absorption base set 2048

    data modify entity @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] Health set value 1024
    data modify entity @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] AbsorptionAmount set value 2048

    scoreboard players set @n[type=armor_stand,tag=not_init,tag=spawning_egg_armor_stand_2.ender_dragon.object] ai_timer.1 200

# sfx
    particle firework ~ ~ ~ 0.2 0.2 0.2 0.2 64 force
    particle entity_effect{color:[0.0,0.0,0.0,1.0]} ~ ~ ~ 0.2 0.2 0.2 0.2 64 force
    particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force
    playsound entity.zombie.break_wooden_door hostile @a[distance=..128] ~ ~ ~ 8 0.5 0
    playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 8 0.5 0
    playsound entity.firework_rocket.large_blast hostile @a[distance=..128] ~ ~ ~ 8 0.5 0

# init
    tag @n[type=slime,tag=not_init,tag=spawning_egg_hitbox.ender_dragon.object] remove not_init
    tag @n[type=falling_block,tag=not_init,tag=spawning_egg_egg.ender_dragon.object] remove not_init
    tag @n[type=armor_stand,tag=not_init,tag=spawning_egg_armor_stand.ender_dragon.object] remove not_init
    tag @n[type=armor_stand,tag=not_init,tag=spawning_egg_armor_stand_2.ender_dragon.object] remove not_init