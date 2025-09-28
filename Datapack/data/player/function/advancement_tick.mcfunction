#> player:advancement_tick
#
# advancement tick
#
# @handles advancement player:tick

# revoke
    advancement revoke @s only player:tick

# get health
    scoreboard players operation @s new_health = @s health

    execute if score @s new_health < @s old_health run scoreboard players set @s health_updated 0
    execute if score @s new_health > @s old_health run scoreboard players set @s health_updated 1
    execute unless score @s new_health = @s old_health run tag @s add health_updated
    execute unless score @s new_health = @s old_health run scoreboard players set @s health_update_timer 9

    scoreboard players operation @s old_health = @s health

# belowname
    function player:belowname/

# reset
    tag @s remove health_updated

# dungeon torch
    # activate
        execute if predicate world:is_in_dungeon if items entity @s weapon.mainhand *[custom_data~{custom_item_id:"dungeon_torch"}] run item modify entity @s weapon.mainhand asset:item/dungeon_torch/add
        execute if predicate world:is_in_dungeon if items entity @s weapon.offhand *[custom_data~{custom_item_id:"dungeon_torch"}] run item modify entity @s weapon.offhand asset:item/dungeon_torch/add
    # deactivate
        execute unless predicate world:is_in_dungeon if items entity @s weapon.mainhand *[custom_data~{custom_item_id:"dungeon_torch_activated"}] run item modify entity @s weapon.mainhand asset:item/dungeon_torch/remove
        execute unless predicate world:is_in_dungeon if items entity @s weapon.offhand *[custom_data~{custom_item_id:"dungeon_torch_activated"}] run item modify entity @s weapon.offhand asset:item/dungeon_torch/remove