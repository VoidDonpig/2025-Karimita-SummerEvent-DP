#> asset:mob/wither_underling/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# kill
    execute if score @s death_timer.1 matches 1 run kill @s

# kill nether star
    execute if score @s death_timer.1 matches 1 run kill @e[type=item,distance=..4,nbt={Item:{id:"minecraft:nether_star"}}]

# sfx
    execute if score @s death_timer.1 matches 20 run particle minecraft:flame ~ ~1.5 ~ 0.2 0.2 0.2 0.3 32 force @a[distance=..32]

# summon soul
    execute if score @s death_timer.1 matches 20 run summon armor_stand ~ ~ ~ {Tags:["not_init","withering_soul","autokill"],Invisible:1b,Invulnerable:1b,NoGravity:0b,Passengers:[{id:"interaction",width:1.0,height:-1.0,data:{asset:{id:withering_soul}},Tags:["autokill","no_vehicle_kill","asset"]}],equipment:{head:{id:"player_head",components:{"profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQzMzJjZDgzNWQwNWJmY2EzZjBlZjQ0NWQ4MmNhMjEyY2Q5MTAyNDljYzczNzE2NTNhYjdiMjk3MGQxYzBmMyJ9fX0="}]}}}},CustomNameVisible:1b,CustomName:{"text":"Withering Soul","color":"red","bold":true}}
    execute if score @s death_timer.1 matches 20 run scoreboard players set @n[type=armor_stand,tag=not_init,tag=withering_soul] autokill_timer 1200