#> asset:mob/insanity_wither/action/lightning_wither_head/
#
# lightning insanity_wither head
#
# @context insanity_wither action

# # summon skull
    execute positioned ~ ~2.8 ~ summon minecraft:item_display run function asset:mob/insanity_wither/action/lightning_wither_head/summon
    playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5 0