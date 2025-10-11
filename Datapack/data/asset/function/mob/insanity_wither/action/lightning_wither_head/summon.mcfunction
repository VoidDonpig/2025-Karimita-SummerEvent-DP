#> asset:mob/insanity_wither/action/lightning_insanity_wither_head/summon
#
# summon head
#
# @within asset:mob/insanity_wither/action/lightning_insanity_wither_head/

# set data
    data merge entity @s {data:{asset:{id:lightning_insanity_wither_head}},Tags:["lightning_insanity_wither_head","asset","autokill"],transformation:[-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.15625f,-0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1,item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-2026216927,-1384166262,-2113639875,557215929],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmMzI4ZjUwNDQxMjliNWQxZjk2YWZmZDFiOGMwNWJjZGU2YmQ4ZTc1NmFmZjVjNTAyMDU4NWVlZjhhM2RhZiJ9fX0="}]}}}}
    tp @s ~ ~ ~ facing entity @n[tag=target] feet
    scoreboard players set @s autokill_timer 100