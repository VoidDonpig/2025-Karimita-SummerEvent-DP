#> player:tick
#
# player tick function
#
# @within core:main

# init
    execute unless score @s player.id = @s player.id run function player:init/

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
    execute if entity @s[advancements={player:trigger/is_jumping=true}] run function player:trigger/is_jumping

    tag @s add arrow_shot
    execute unless score @s bow_used = @s bow_used unless score @s crossbow_used = @s crossbow_used run tag @s remove arrow_shot
    execute if entity @s[tag=arrow_shot] run function player:trigger/shot_arrow/
    execute if score @s rclick matches 1.. run function player:trigger/rclicked/
    execute if score @s exp_queue.combat matches 1.. run function player:trigger/gained_exp.combat/
    execute if score @s exp_queue.dungeon matches 1.. run function player:trigger/gained_exp.dungeon/
    execute if score @s gold_queue matches 1.. run function player:trigger/gained_gold/

    execute if predicate player:is_afk run function player:trigger/afk/check
    scoreboard players reset @s[tag=!player.is_afk] afk_timer
    tag @s[tag=player.is_afk] remove player.is_afk

# full set bonus
    execute if predicate asset:armor/full/palladion_armor run function asset:item/palladion_armor/

# class functions
    execute if predicate player:team/class.knight run function player:class/knight/
    execute if predicate player:team/class.assassin run function player:class/assassin/
    execute if predicate player:team/class.healer run function player:class/healer/

# update status
    execute if entity @s[tag=statusupdate] run function player:status/update

# attack cooltime
    execute if score @s attack_cooltime = @s attack_cooltime run function player:attack_cooltime

# regen mana
    execute if predicate lib:periodic/20 run function player:status/mana/regen/

# show status actionbar
    function player:status/actionbar

# cosmetic
    execute if score @s cosmetic_particle matches 1.. run function player:cosmetic/particle/

# remove cooltime
    function player:status/cooltime/remove

# clicking
    execute unless entity @s[tag=add_clicking_tag] run tag @s remove clicking
    execute if entity @s[tag=add_clicking_tag] run tag @s add clicking
    tag @s remove add_clicking_tag

# jumping
    execute unless entity @s[tag=add_jumping_tag] run tag @s remove jumping
    execute if entity @s[tag=add_jumping_tag] run tag @s add jumping
    tag @s remove add_jumping_tag

# reset
    scoreboard players reset @s bow_used
    scoreboard players reset @s crossbow_used
    scoreboard players reset @s rclick
    execute if entity @s[advancements={player:trigger/charging_bow=false}] if score @s charging_bow = @s charging_bow run scoreboard players reset @s charging_bow
    execute if entity @s[advancements={player:trigger/charging_bow=true}] run advancement revoke @s only player:trigger/charging_bow