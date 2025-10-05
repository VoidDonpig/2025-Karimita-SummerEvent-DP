#> asset:mob/ghast/action/hellfied_rain/check
#
# check if it can use the action
#
# @within asset:mob/ghast/always

# check
    tag @s add this
    execute positioned ~-10 ~-67 ~-10 if entity @a[dx=19,dy=64,dz=19,predicate=!player:is_player_exception] run tag @n[tag=this] add asset.ghast.hellfied_rain.ok
    tag @s remove this

# success
    execute if entity @s[tag=asset.ghast.hellfied_rain.ok] run function asset:mob/ghast/action/hellfied_rain/

# reset
    tag @s remove asset.ghast.hellfied_rain.ok