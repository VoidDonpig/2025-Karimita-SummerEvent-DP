#> player:class/knight/ability/stone_castle/
#
# stone castle process
#
# @within player:class/knight/

# act
    execute if score @s class.knight.level matches 1..29 run function player:class/knight/ability/stone_castle/lv1
    execute if score @s class.knight.level matches 30..39 run function player:class/knight/ability/stone_castle/lv2
    execute if score @s class.knight.level matches 40.. run function player:class/knight/ability/stone_castle/lv3

# sfx
    particle minecraft:wax_off ~ ~1.0 ~ 1.0 1.0 1.0 0 16 force @a[distance=..32]
    particle block{block_state:"dirt"} ~ ~ ~ 2.5 2.5 2.5 0 64 force @a[distance=..32]
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2 0
    playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 0.5 2 0

# cooltime
    scoreboard players set @s stone_castle_cooltime 300