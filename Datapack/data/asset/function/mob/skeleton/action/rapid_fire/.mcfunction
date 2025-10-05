#> asset:mob/skeleton/action/rapid_fire/
#
# shot arrow rapidly
#
# @within asset:mob/skeleton/

# define direction of arrow
    execute if score $difficulty_level world matches 1..4 store result score $direction temporary run random value 0..2
    execute if score $difficulty_level world matches 5.. run scoreboard players set $direction temporary 3

# set direction ($difficulty_level=..4)
    # set reference armor stand Pos
        # right
            execute if score $direction temporary matches 0 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^-0.4 ^ ^3.0
        # center
            execute if score $direction temporary matches 1 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^3.0
        # left
            execute if score $direction temporary matches 2 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^0.4 ^ ^3.0
    # save reference armor stand Pos
        execute if score $direction temporary matches 0..2 in world:admin_area run data modify storage asset:mob __temp__.motion set from entity 83a-51-1-0-0 Pos

# set direction ($difficulty_level=5)
    # set reference armor stand Pos
        # right
            execute if score $direction temporary matches 3 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^-0.4 ^ ^3.0
            # save reference armor stand Pos
                execute if score $direction temporary matches 3 in world:admin_area run data modify storage asset:mob __temp__.0.motion set from entity 83a-51-1-0-0 Pos
        # center
            execute if score $direction temporary matches 3 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^3.0
            # save reference armor stand Pos
                execute if score $direction temporary matches 3 in world:admin_area run data modify storage asset:mob __temp__.1.motion set from entity 83a-51-1-0-0 Pos
        # left
            execute if score $direction temporary matches 3 in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^0.4 ^ ^3.0
        # save reference armor stand Pos
                execute if score $direction temporary matches 3 in world:admin_area run data modify storage asset:mob __temp__.2.motion set from entity 83a-51-1-0-0 Pos

# summon arrow ($difficulty_level=..4)
    execute if score $difficulty_level world matches 1..4 run function asset:mob/skeleton/action/rapid_fire/summon_arrow with storage asset:mob __temp__

# summon arrow ($difficulty_level=5)
    execute if score $difficulty_level world matches 5.. run function asset:mob/skeleton/action/rapid_fire/summon_arrow with storage asset:mob __temp__.0
    execute if score $difficulty_level world matches 5.. run function asset:mob/skeleton/action/rapid_fire/summon_arrow with storage asset:mob __temp__.1
    execute if score $difficulty_level world matches 5.. run function asset:mob/skeleton/action/rapid_fire/summon_arrow with storage asset:mob __temp__.2

# set data to summmoned arrow
    # tag this entity
        tag @s add this
    # set data
        # owner
            execute as @e[type=arrow,distance=..2,tag=rapid_fire.skeleton.arrow,tag=!already_init] at @s run data modify entity @s Owner set from entity @n[tag=this] UUID
        # components
            execute as @e[type=arrow,distance=..2,tag=rapid_fire.skeleton.arrow,tag=!already_init] at @s run data modify entity @s item.components set from entity @n[tag=this] equipment.offhand.components
        # weapon
            execute as @e[type=arrow,distance=..2,tag=rapid_fire.skeleton.arrow,tag=!already_init] at @s run data modify entity @s weapon set from entity @n[tag=this] equipment.mainhand
    # add init tag
        tag @e[type=arrow,distance=..2,tag=rapid_fire.skeleton.arrow,tag=!already_init] add already_init

# reset
    data remove storage asset:mob __temp__
    scoreboard players reset $direction temporary
    tag @s remove this