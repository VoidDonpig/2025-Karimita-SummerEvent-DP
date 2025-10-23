#> asset:mob/elder_guardian/action/shard_of_prismarine/
#
# summon shard of prismarine
#
# @within asset:mob/elder_guardian/

# summon
    tag @s add this
    execute positioned ^0.8 ^ ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^0.8 ^0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^0.8 ^-0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^-0.8 ^ ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^-0.8 ^0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^-0.8 ^-0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^ ^0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon
    execute positioned ^ ^-0.8 ^0.8 summon minecraft:item_display run function asset:mob/elder_guardian/action/shard_of_prismarine/summon

# sound
    playsound minecraft:entity.shulker.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 0

# reset
    tag @s remove this