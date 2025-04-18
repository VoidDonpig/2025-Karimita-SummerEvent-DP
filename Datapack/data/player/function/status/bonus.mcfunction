#> player:status/bonus
#
# bonus status process
#
# @within player:status/update

# apply status
    execute store result score $bonus_status temporary run data get storage player: bonus_status[0].value
    $scoreboard players operation $bonus_$(name) temporary += $bonus_status temporary
    data remove storage player: bonus_status[0]
    execute unless data storage player: bonus_status[] run scoreboard players reset $bonus_status temporary
    execute unless data storage player: bonus_status[] run data remove storage player: bonus_status
    execute if data storage player: bonus_status[] run function player:status/bonus with storage player: bonus_status[0]