#> player:tick
#
# player tick function
#
# @within core:main

# init
    execute unless score @s player.id = @s player.id run function player:init/

# rejoin
    execute if score @s player.rejoined matches 1.. run function player:trigger/rejoined

# invul timer
    scoreboard players remove @s[scores={player.invul_timer=1..}] player.invul_timer 1
    scoreboard players reset @s[scores={player.invul_timer=..0}] player.invul_timer

# place body item
    execute unless items entity @s armor.body * run item replace entity @s armor.body with white_carpet
    execute unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:"player:"}]] run item modify entity @s armor.body {function:"set_enchantments",enchantments:{"player:":1}}

# set gamemode
    execute if entity @s[tag=!resistentia.admin_authed_by_a675a99c-635e-414f-9dc5-b203d1c03e8e,predicate=world:adventure_dimension,gamemode=!spectator] run gamemode adventure
    execute if entity @s[tag=!resistentia.admin_authed_by_a675a99c-635e-414f-9dc5-b203d1c03e8e,predicate=!world:adventure_dimension,gamemode=!spectator] run gamemode survival

# when in boss battle
    function player:trigger/in_ender_dragon_battle/check

# in dungeon tick
    execute if predicate world:is_in_dungeon run function player:in_dungeon

# death event
    execute if entity @e[type=player,scores={death=1..},distance=..0.01,limit=1] run function player:trigger/died/
    execute if entity @e[type=player,advancements={player:trigger/died=true},distance=..0.01,limit=1] run function player:trigger/died/

# attack cooltime
    execute if score @s attack_cooltime = @s attack_cooltime run function player:attack_cooltime

# remove shortbow cooltime
    execute if score @s shortbow_cooltime matches 1.. run scoreboard players remove @s shortbow_cooltime 1
    execute if score @s shortbow_cooltime matches ..0 run scoreboard players reset @s shortbow_cooltime

# remove cooltime
    function player:status/cooltime/remove

# full set bonus
    execute if predicate asset:armor/full/palladion_armor run function asset:item/palladion_armor/

# trigger
    function player:trigger/slot_changed/check
    execute if entity @s[advancements={player:trigger/is_jumping=true}] run function player:trigger/is_jumping
    execute if entity @s[advancements={player:trigger/changed_dimension=true}] run function player:trigger/changed_dimension/

    tag @s add arrow_shot
    execute unless score @s bow_used = @s bow_used unless score @s crossbow_used = @s crossbow_used run tag @s remove arrow_shot
    execute if entity @s[tag=arrow_shot] run function player:trigger/shot_arrow/
    execute if score @s rclick matches 1.. run function player:trigger/rclicked/
    execute if score @s exp_queue.combat matches 1.. run function player:trigger/gained_exp.combat/
    execute if score @s exp_queue.dungeon matches 1.. run function player:trigger/gained_exp.dungeon/
    execute if score @s gold_queue matches 1.. run function player:trigger/gained_gold/

    #execute if predicate lib:periodic/40 if predicate player:is_afk run function player:trigger/afk/check
    #execute if predicate lib:periodic/40 run scoreboard players reset @s[tag=!player.is_afk] afk_timer
    #execute if predicate lib:periodic/40 run tag @s[tag=player.is_afk] remove player.is_afk

# class functions
    execute if predicate player:team/class.knight run function player:class/knight/
    execute if predicate player:team/class.assassin run function player:class/assassin/
    execute if predicate player:team/class.healer run function player:class/healer/

# update status
    execute if entity @s[tag=statusupdate] run function player:status/update

# faint
    function player:faint/check
    execute if score @s player.death_timer = @s player.death_timer run function player:faint/timer

# regen mana
    execute if predicate lib:periodic/20 run function player:status/mana/regen/

# show status actionbar
    function player:status/actionbar

# cosmetic
    execute if score @s cosmetic_particle matches 1.. run function player:cosmetic/particle/

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