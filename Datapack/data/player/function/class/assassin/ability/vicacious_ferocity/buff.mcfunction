#> player:class/assassin/ability/vicacious_ferocity/buff
#
# buff process
#
# @within player:class/assassin/ability/vicacious_ferocity/mana_check

# damage
    damage @s 8 out_of_world

# add cooltime
    scoreboard players set @s vicacious_ferocity_cooltime 100

# add timer
    scoreboard players set @s vicacious_ferocity_timer 100

# sfx
    playsound entity.ghast.scream player @a ~ ~ ~ 1 2.0 0
    playsound entity.ghast.scream player @a ~ ~ ~ 1 1.2 0
    playsound entity.ghast.scream player @a ~ ~ ~ 1 1.1 0
    playsound entity.ghast.scream player @a ~ ~ ~ 1 1.0 0
    playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 2 0