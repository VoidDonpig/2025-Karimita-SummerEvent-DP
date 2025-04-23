#> asset:mob/bogged/action/disgusting_worm/
#
# shoot silverfish
#
# @within asset:mob/bogged/tick/have_target

# set direction
    # $difficulty_level=..4
        # set Pos
            execute if score $difficulty_level world matches ..4 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^3.0
        # record motion from Pos
            execute if score $difficulty_level world matches ..4 in world:admin_area run data modify storage asset:mob __temp__.motion set from entity 83a-51-1-0-0 Pos
    # $difficulty_level=5
        # right direction
            # set Pos
                execute if score $difficulty_level world matches 5 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^-0.2 ^ ^3.0
            # record motion from Pos
                execute if score $difficulty_level world matches 5 in world:admin_area run data modify storage asset:mob __temp__.0.motion set from entity 83a-51-1-0-0 Pos
        # center direction
            # set Pos
                execute if score $difficulty_level world matches 5 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^3.0
            # record motion from Pos
                execute if score $difficulty_level world matches 5 in world:admin_area run data modify storage asset:mob __temp__.1.motion set from entity 83a-51-1-0-0 Pos
        # left direction
            # set Pos
                execute if score $difficulty_level world matches 5 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^0.2 ^ ^3.0
            # record motion from Pos
                execute if score $difficulty_level world matches 5 in world:admin_area run data modify storage asset:mob __temp__.2.motion set from entity 83a-51-1-0-0 Pos

# summon silverfish
    # $difficulty_level=..4
        function asset:mob/bogged/action/disgusting_worm/summon_silverfish with storage asset:mob __temp__
    # $difficulty_level=5
        function asset:mob/bogged/action/disgusting_worm/summon_silverfish with storage asset:mob __temp__.0
        function asset:mob/bogged/action/disgusting_worm/summon_silverfish with storage asset:mob __temp__.1
        function asset:mob/bogged/action/disgusting_worm/summon_silverfish with storage asset:mob __temp__.2

# reset
    data remove storage asset:mob __temp__