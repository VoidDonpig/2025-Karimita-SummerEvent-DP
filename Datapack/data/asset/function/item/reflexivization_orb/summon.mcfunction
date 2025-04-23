#> asset:item/reflexivization_orb/summon
#
# summon asset
#
# @within asset:item/meng_orb/do

# set data
    data merge entity @s {data:{asset:{id:reflexivization_orb}},CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["asset","autokill"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODNlZDRjZTIzOTMzZTY2ZTA0ZGYxNjA3MDY0NGY3NTk5ZWViNTUzMDdmN2VhZmU4ZDkyZjQwZmIzNTIwODYzYyJ9fX0="}]}}}},CustomName:{"bold":true,"color":"dark_purple","text":"リフレキシビゼーションーオーブ"}}

    execute if entity @p[tag=this,predicate=player:team/class.healer] if score @p[tag=this,predicate=player:team/class.healer] class.healer.level matches 40.. run scoreboard players set @s autokill_timer 2400
    execute unless entity @p[tag=this,predicate=player:team/class.healer] run scoreboard players set @s autokill_timer 1200
    execute if entity @p[tag=this,predicate=player:team/class.healer] if score @p[tag=this,predicate=player:team/class.healer] class.healer.level matches ..39 run scoreboard players set @s autokill_timer 1200

    tag @s add deployable

    scoreboard players operation @s player.id = @p[tag=this] player.id