execute unless entity @s[tag=already_dead] run playsound minecraft:entity.wither.hurt hostile @a[distance=..25] ~ ~ ~ 0.4 1 0
execute unless entity @s[tag=already_dead] run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..25] ~ ~ ~ 0.7 1 0
tag @s add already_dead