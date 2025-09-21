#> player:tick
#
# player tick function
#
# @within core:main

# init
    execute unless score @s player.id matches 1.. run function player:init/

# add tag
    tag @s remove player.exception
    tag @s[gamemode=!survival,gamemode=!adventure] add player.exception

# set gamemode
    execute if entity @s[tag=!admin,predicate=world:adventure_dimension] run gamemode adventure
    execute if entity @s[tag=!admin,predicate=!world:adventure_dimension] run gamemode survival

# death event
    execute if score @s death matches 1.. run function player:trigger/died/
    execute if entity @s[advancements={player:trigger/died=true}] run function player:trigger/died/

# remove shortbow cooltime
    execute if score @s shortbow_cooltime matches 1.. run scoreboard players remove @s shortbow_cooltime 1
    execute if score @s shortbow_cooltime matches ..0 run scoreboard players reset @s shortbow_cooltime

# trigger
    function player:trigger/slot_changed/check

    tag @s add arrow_shot
    execute unless score @s bow_used matches -2147483648..2147483647 unless score @s crossbow_used matches -2147483648..2147483647 run tag @s remove arrow_shot
    execute if entity @s[tag=arrow_shot] run function player:trigger/shot_arrow/
    execute if score @s rclick matches 1.. run function player:trigger/rclicked/
    execute if score @s exp_queue.combat matches 1.. run function player:trigger/gained_exp.combat/
    execute if score @s gold_queue matches 1.. run function player:trigger/gained_gold/

    execute if predicate player:is_afk run function player:trigger/afk/check
    scoreboard players reset @s[tag=!player.is_afk] afk_timer
    tag @s[tag=player.is_afk] remove player.is_afk

# dungeon compass
    execute if items entity @s weapon.mainhand *[custom_data~{custom_item_id:"dungeon_compass"}] if entity @n[tag=dungeon_exit,distance=..256] run function asset:item/dungeon_compass/

# full set bonus
    execute if predicate asset:armor/full/palladion_armor run function asset:item/palladion_armor/

# class functions
    execute if predicate player:team/class.knight run function player:class/knight/
    execute if predicate player:team/class.assassin run function player:class/assassin/
    execute if predicate player:team/class.healer run function player:class/healer/

# update status
    execute if entity @s[tag=statusupdate] run function player:status/update

# attack cooltime
    execute if score @s attack_cooltime matches -2147483648..2147483647 run function player:attack_cooltime

# regen mana
    execute if predicate lib:periodic/20 run function player:status/mana/regen/

# show status actionbar
    function player:status/actionbar

# cosmetic
    execute if score @s cosmetic matches 1.. run function player:cosmetic/

# remove cooltime
    function player:status/cooltime/remove

# clicking
    execute unless entity @s[tag=add_clicking_tag] run tag @s remove clicking
    execute if entity @s[tag=add_clicking_tag] run tag @s add clicking
    tag @s remove add_clicking_tag

# reset
    scoreboard players reset @s bow_used
    scoreboard players reset @s crossbow_used
    scoreboard players reset @s rclick
    execute if entity @s[advancements={player:trigger/charging_bow=false}] if score @s charging_bow matches -2147483648..2147483647 run scoreboard players reset @s charging_bow
    execute if entity @s[advancements={player:trigger/charging_bow=true}] run advancement revoke @s only player:trigger/charging_bow