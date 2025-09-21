execute unless entity @s[tag=already_dead] run playsound minecraft:entity.wither.hurt hostile @a[distance=..25] ~ ~ ~ 0.4 1 0
execute unless entity @s[tag=already_dead] run playsound minecraft:block.fire.extinguish hostile @a[distance=..25] ~ ~ ~ 0.8 2 0
execute unless entity @s[tag=already_dead] run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force

tag @s add already_dead