#> player:storage/create/
#
# create new player's storage
#
# @within player:init/

# allocate
    # get id
        execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    # allocate
        function player:storage/create/allocate with storage player: __temp__

# reset
    data remove storage player: __temp__