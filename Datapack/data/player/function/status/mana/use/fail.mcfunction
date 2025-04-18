# player:status/mana/use/fail
#
# send fail message
#
# @context item using mana

# fail
    tellraw @s [{"text": "マナが足りない！","color": "red"},{"text": "(消費マナ: ","color": "gray"},{"score": {"name": "$needed_mana","objective": "temporary"},"color": "aqua"},{"text": ")","color": "gray"}]
    playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 1.0 0.6 0.0