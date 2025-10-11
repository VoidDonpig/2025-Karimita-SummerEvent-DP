#> asset:mob/insanity_wither/action/phase01
#
# boss phase 1
#
# @within asset:mob/insanity_wither/action/

# move
    function asset:mob/insanity_wither/base_move_1

# charge
    # roll
        function asset:mob/insanity_wither/action/charge/roll
    # move
        function asset:mob/insanity_wither/action/charge/

# rapid insanity_wither skull
    function asset:mob/insanity_wither/action/rapid_skull_shot/

# insanity_wither frenzy
    function asset:mob/insanity_wither/action/wither_frenzy/

# insanity_wither tnt
    function asset:mob/insanity_wither/action/wither_tnt/

# insanity_withered aura
    function asset:mob/insanity_wither/action/withered_aura/

# death lay
    function asset:mob/insanity_wither/action/death_ray/summon_1
    function asset:mob/insanity_wither/action/death_ray/summon_2
    function asset:mob/insanity_wither/action/death_ray/summon_3

# lightning
    execute as @a[distance=..128] at @s run function asset:mob/insanity_wither/action/catastrophic_lightning/

# curse of wither
    execute as @a[distance=..128] at @s run function asset:mob/insanity_wither/action/curse_of_wither/kill

# nuclear explosion
    function asset:mob/wither/action/nuclear_explosion/