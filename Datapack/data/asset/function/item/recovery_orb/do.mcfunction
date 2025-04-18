#> asset:item/recovery_orb/do
#
# ablity process
#
# @within asset:item/recovery_orb/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# kill old orb
    tag @s add this
    execute as @e[type=minecraft:armor_stand,tag=deployable] if score @s player.id = @p[tag=this] player.id run tellraw @p[tag=this] {"text": "以前に置いた設置可能アイテムは消滅しました","color": "yellow"}
    execute as @e[type=minecraft:armor_stand,tag=deployable] if score @s player.id = @p[tag=this] player.id run kill @s

# summon
    execute at @s positioned ~ ~1.0 ~ summon minecraft:armor_stand run function asset:item/recovery_orb/summon
    tag @s remove this