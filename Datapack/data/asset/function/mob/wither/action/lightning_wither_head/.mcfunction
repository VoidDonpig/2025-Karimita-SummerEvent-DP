#> asset:mob/wither/action/lightning_wither_head/
#
# lightning wither head
#
# @context wither action

# # summon skull
    execute positioned ~ ~2.8 ~ summon minecraft:item_display run function asset:mob/wither/action/lightning_wither_head/summon
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 0.5 0