#> player:storage/save
#
# save data
#
# @context player

# get storage
    # get id
        execute store result storage player: __temp__.id int 1 run scoreboard players get @s player.id
    # allocate
        function player:storage/save/write with storage player: __temp__

# reset
    data remove storage player: __temp__