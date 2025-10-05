#> player:faint/
#
# faint
#
# @within player:trigger/died/

# summon mannequin
    # get data
        data modify storage player: __temp__.x set from entity @s LastDeathLocation.pos[0]
        data modify storage player: __temp__.y set from entity @s LastDeathLocation.pos[1]
        data modify storage player: __temp__.z set from entity @s LastDeathLocation.pos[2]
        data modify storage player: __temp__.dimension set from entity @s LastDeathLocation.dimension
        execute in world:admin_area run loot replace block 0 0 0 container.0 loot {pools:[{bonus_rolls:0,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}],rolls:1}]}
        execute in world:admin_area run data modify storage player: __temp__.name set from block 0 0 0 Items[0].components."minecraft:profile".name
    # summon
        function player:faint/summon with storage player: __temp__

# reset
    data remove storage player: __temp__