#> asset:object/spawning_egg_hitbox.ender_dragon/timer
#
# tick
#
# @within asset:object/spawning_egg_hitbox.ender_dragon/

# manage timer
    scoreboard players remove @s ai_timer.1 1

# edit nametag
    # count sec dec
        scoreboard players operation $sec temporary = @s ai_timer.1
        scoreboard players operation $dec temporary = @s ai_timer.1
        scoreboard players operation $sec temporary /= $20 constant
        scoreboard players operation $dec temporary %= $20 constant
        scoreboard players operation $dec temporary /= $2 constant
    # change nametag
        data modify entity 83a-51-1-0-2 text set value ["",{score:{name:"$sec",objective:"temporary"},color:"red"},{text:".",color:"red"},{score:{name:"$dec",objective:"temporary"},color:"red"},{text:"s",color:"red"}]
        data modify entity @n[type=armor_stand,tag=spawning_egg_armor_stand_2.ender_dragon.object] CustomName set from entity 83a-51-1-0-2 text

# hatch
    execute if score @s ai_timer.1 matches ..0 positioned ~ ~-0.3 ~ as @n[type=slime,tag=spawning_egg_hitbox.ender_dragon.object] at @s run function asset:object/spawning_egg_hitbox.ender_dragon/hatch