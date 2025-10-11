#> asset:mob/insanity_wither/action/rapid_skull_shot/motion
#
# set data
#
# @within asset:mob/insanity_wither/action/rapid_skull_shot/

# set data
    rotate @s facing entity @n[tag=target] eyes

    execute in world:admin_area rotated as @s positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^10
    data modify storage asset:mob __temp__.Motion set from entity 83a-51-1-0-0 Pos
    data modify storage asset:mob __temp__.Owner set from entity @n[tag=this] UUID
    data modify storage asset:mob __temp__.Tags set value ["not_init","autokill","rapid_insanity_wither_skull_shot"]
    data modify storage asset:mob __temp__.LeftOwner set value 0b
    kill @s