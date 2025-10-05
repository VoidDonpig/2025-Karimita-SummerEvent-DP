#> player:storage/create/allocate
#
# allocate storage
#
# @within player:storage/create/

# allocate
    $execute unless data storage player: playerdata[{id:$(id)}] run data modify storage player: playerdata append value {id:$(id)}