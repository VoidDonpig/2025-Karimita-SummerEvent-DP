#> asset:object/player.faint_mannequin/
#
# asset tick
#
# @within asset:

# kill if no match player
    tag @s add this
    execute as @a[scores={player.death_timer=1..}] if score @s player.id = @s player.id run tag @n[tag=this] add player_existed
    tag @s remove this

    kill @s[tag=!player_existed]

# reset
    tag @s remove player_existed