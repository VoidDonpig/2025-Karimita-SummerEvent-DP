#> asset:object/player.faint_mannequin/
#
# asset tick
#
# @within asset:

# kill if no match player
    tag @s add this
    execute as @a[scores={player.death_timer=1..}] if score @s player.id = @n[tag=this] player.id run tag @n[tag=this] add player_existed
    tag @s remove this

    execute if entity @s[tag=!player_existed] on passengers on passengers on passengers on passengers unless predicate world:is_in_dungeon run function player:faint/respawn/
    execute if entity @s[tag=!player_existed] on passengers on passengers on passengers on passengers if predicate world:is_in_dungeon run function world:dungeon/exit/
    
    execute if entity @s[tag=!player_existed] run function lib:vanish/

# reset
    tag @s remove player_existed