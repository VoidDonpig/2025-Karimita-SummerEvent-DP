#> asset:mob/elder_guardian/action/shard_of_prismarine/summon
#
# summon display
#
# @within asset:mob/elder_guardian/action/shard_of_prismarine/

# set data
    execute rotated as @n[tag=this] run tp @s ^ ^ ^ ~ ~
    tag @s add asset
    tag @s add shard_of_prismarine
    data merge entity @s {transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1,item:{id:"minecraft:prismarine_shard",count:1},data:{asset:{id:shard_of_prismarine}}}
    tag @s add autokill
    scoreboard players set @s autokill_timer 60