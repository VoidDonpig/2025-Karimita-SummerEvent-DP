#> player:class/assassin/ability/shadow_step/
#
# shadow step
#
# @within player:class/assassin/

# get motion
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^0.8
    execute store result score $x player.motion run data get entity 83a-51-1-0-0 Pos[0] 10000
    execute store result score $y player.motion run data get entity 83a-51-1-0-0 Pos[1] 10000
    execute store result score $z player.motion run data get entity 83a-51-1-0-0 Pos[2] 10000

    scoreboard players add $y player.motion 4000

# sfx
    particle minecraft:large_smoke ~ ~ ~ 0.0 0.0 0.0 0.1 16 normal
    playsound minecraft:entity.goat.long_jump hostile @a[distance=..16] ~ ~ ~ 1 1.2
    playsound minecraft:entity.ender_dragon.flap hostile @a[distance=..16] ~ ~ ~ 1 2.0

# invul
    execute unless score @s player.invul_timer matches 2.. run scoreboard players set @s player.invul_timer 2

# reset motion
    function lib:player_motion/reset

# motion
    function lib:player_motion/score

# cooltime
    scoreboard players set @s shadow_step_cooltime 20
    tag @s add player.assassin.shadow_step.doing