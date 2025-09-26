#> asset:mob/wither/death/
#
# death event
#
# @within mob:death/run

# death event
    scoreboard players add @s death_timer.1 1
    scoreboard players add @s death_timer.2 1

    execute if score @s death_timer.1 matches 1 run data modify storage asset:mob info.wither_already_killed set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s NoAI set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Silent set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Invulnerable set value 1b

    execute if score @s death_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "があ！","color": "red"}]
    execute if score @s death_timer.1 matches 60 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "「全ては無意味」...","color": "red"}]
    execute if score @s death_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "今なら貴方の言葉が理解できます。","color": "red"}]
    execute if score @s death_timer.1 matches 160 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "我が主よ... お許しください...","color": "red"}]

    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 run playsound entity.wither.hurt hostile @a ~ ~ ~ 16 1 0
    execute unless score @s death_timer.1 matches 200.. run tp @s ~ ~ ~ ~45 ~

    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 store result storage asset: __temp__.x int 1 run random value -2..2
    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 store result storage asset: __temp__.y int 1 run random value -2..2
    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 store result storage asset: __temp__.z int 1 run random value -2..2

    execute positioned ~ ~1.5 ~ run function asset:mob/wither/death/explosion with storage asset: __temp__

    execute if score @s death_timer.2 matches 5 run scoreboard players reset @s death_timer.2

    execute if score @s death_timer.1 matches 200 on vehicle run kill @s
    execute if score @s death_timer.1 matches 200 run playsound entity.wither.death hostile @a ~ ~ ~ 16 1 0
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[0.4d,0.0d,0.0d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[-0.4d,0.0d,0.0d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[0.0d,0.0d,0.4d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[0.0d,0.0d,-0.4d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[0.3d,0.0d,0.3d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[0.3d,0.0d,-0.3d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[-0.3d,0.0d,0.3d]}
    execute if score @s death_timer.1 matches 200 run summon tnt ~ ~2.5 ~ {Motion:[-0.3d,0.0d,-0.3d]}
    execute if score @s death_timer.1 matches 200 run kill @e[type=item,distance=..4,nbt={Item:{id:"minecraft:nether_star"}}]
    execute if score @s death_timer.1 matches 200 run summon item ~ ~2.5 ~ {Item:{id:"nether_star"},Invulnerable:true,Glowing:1b}

    execute if score @s death_timer.1 matches 200.. run kill @s

# reset
    data remove storage asset: __temp__