# player:status/health/fail
#
# send fail message
#
# @context item using health

# fail
    tellraw @s [{"text": "体力が足りない！","color": "red"},{"text": "(必要体力: ","color": "gray"},{"score": {"name": "$needed_health","objective": "temporary"},"color": "red"},{"text": ")","color": "gray"}]
    playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 1.0 0.6 0.0