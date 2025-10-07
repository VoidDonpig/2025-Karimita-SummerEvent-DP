#> asset:mob/wither/action/curse_of_wither/kill
#
# deal massive damage
#
# @context wither action

# goodbye
    damage @s 66666 minecraft:lightning_bolt
    tag @s remove wither_cursed

# sfx
    particle dust_color_transition{from_color:[0.878,0.969,0.576],scale:1,to_color:[0.2,0.2,0.2]} ~ ~10 ~ 0.2 5 0.2 1 256 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 4
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0 5 force @a[distance=..32]
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a[distance=..32]
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a[distance=..32]
    particle dust_pillar{block_state:"minecraft:black_stained_glass"} ~ ~0.5 ~ 1.2 0 1.2 0.5 128 normal
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.5 0.5 1
    playsound minecraft:entity.wither_skeleton.hurt hostile @a ~ ~ ~ 1 0.7

# message
    execute store result score $message temporary run random value 1..2
    execute if score $message temporary matches 1 run tellraw @s [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "さらばだ。","color": "red"}]
    execute if score $message temporary matches 2 run tellraw @s [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "本当に愚かだな。","color": "red"}]
    scoreboard players reset $message temporary