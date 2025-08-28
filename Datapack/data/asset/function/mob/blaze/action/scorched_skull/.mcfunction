#> asset:mob/blaze/action/scorched_skull/
#
# attack after death
#
# @within asset:mob/blaze/death/

# shoot explosive fireball
    # add tag
        execute on attacker run tag @s add target
    # shoot
        execute if entity @e[tag=target] positioned ~ ~1.0 ~ facing entity @n[tag=target] eyes positioned ~ ~-0.4 ~ run function asset:mob/blaze/action/scorched_skull/skull

# reset
    tag @e[tag=target] remove target