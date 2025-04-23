#> asset:object/sacred_orb/purify
#
# purify curse
#
# @within asset:object/sacred_orb/

# purify
    tag @s remove wither_cursed
    playsound minecraft:entity.experience_orb.pickup hostile @s ~ ~ ~ 1 1 1
    title @s times 0 100 10
    title @s title ""
    title @s subtitle {"text": "ウィザーの呪いが浄化された!","color": "green"}