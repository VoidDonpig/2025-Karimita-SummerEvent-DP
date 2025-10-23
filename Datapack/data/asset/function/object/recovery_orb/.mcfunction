#> asset:object/recovery_orb/
#
# asset process
#
# @within asset:

# show lingering time
    scoreboard players operation $time temporary = @s autokill_timer
    scoreboard players operation $time temporary /= $20 constant
    data modify entity 83a-51-1-0-2 text set value [{"bold":true,"color":"dark_purple","text":"リカバリーオーブ "},{"score":{name:"$time","objective":"temporary"},"bold":true,"color":"yellow"},{"bold":true,"color":"yellow","text":"s"}]
    data modify entity @s CustomName set from entity 83a-51-1-0-2 text
    scoreboard players reset $time temporary

# sfx
    execute anchored eyes run particle minecraft:dust{color:[0.396,0.082,0.671],scale:1} ^ ^ ^0.8 0.0 0.0 0.0 0 1 normal
    execute anchored eyes run particle minecraft:dust{color:[0.396,0.082,0.671],scale:1} ^ ^ ^-0.8 0.0 0.0 0.0 0 1 normal
    scoreboard players add @s asset_timer.1 1
    tp @s ~ ~ ~ ~10 0
    function lib:orb_movement/
    
# buff
    execute if score @s asset_timer.1 matches 1 as @a[distance=..24] at @s anchored eyes run function asset:object/recovery_orb/buff

# reset
    execute if score @s asset_timer.1 matches 20.. run scoreboard players reset @s asset_timer.1