#> player:class/knight/ability/indomitable_spirit/lv3
#
# activation
#
# @within player:class/knight/ability/indomitable_spirit/check

# buff
    execute unless predicate world:is_in_dungeon run effect give @s absorption 90 14
    execute if predicate world:is_in_dungeon run effect give @s absorption 90 28

# set timer
    scoreboard players set @s indominatable_spirit_timer 900

# sfx
    playsound entity.iron_golem.repair player @a[distance=..16] ~ ~ ~ 1 1 0
    playsound entity.blaze.hurt player @a[distance=..16] ~ ~ ~ 1 0.5 0
    playsound entity.iron_golem.hurt player @a[distance=..16] ~ ~ ~ 1 0.75 0
    particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0 32 normal
    particle wax_off ~ ~ ~ 0.4 0.4 0.4 0 32 normal
    particle block{block_state:{Name:"iron_block"}} ~ ~ ~ 0.4 0.4 0.4 0 32 normal