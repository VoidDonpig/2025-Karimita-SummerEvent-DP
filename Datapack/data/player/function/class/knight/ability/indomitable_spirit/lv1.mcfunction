#> player:class/knight/ability/indomitable_spirit/lv1
#
# activation
#
# @within player:class/knight/ability/indomitable_spirit/check

# buff
    execute unless predicate world:is_in_dungeon run effect give @s absorption 90 4
    execute if predicate world:is_in_dungeon run effect give @s absorption 90 8

# set timer
    scoreboard players set @s indominatable_spirit_timer 1800

# sfx
    playsound entity.iron_golem.repair player @a ~ ~ ~ 1 1 0
    particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0 32 force @a[distance=..32]