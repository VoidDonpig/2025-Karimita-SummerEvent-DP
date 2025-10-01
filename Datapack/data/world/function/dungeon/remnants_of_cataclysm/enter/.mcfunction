#> world:dungeon/remnants_of_cataclysm/enter/
#
# enter dungeon
#
# @within world:dungeon/remnants_of_cataclysm/enter/check

# tp
    $execute positioned 0 128 $(id)000 positioned as @n[type=marker,tag=dungeon_entrance] run tp @s ~ ~ ~
    $execute positioned 0 128 $(id)000 run spawnpoint @s ~ ~ ~

# full regen
    effect clear @s
    effect give @s resistance 5 9 true
    effect give @s instant_health 5 14 true
    effect give @s saturation 5 14 true
    effect give @s blindness 5 1 true

# update dungeon item
    function asset:item/activate_dungeon_item

# sfx
    title @s times 40 40 20
    title @s title [{"text":"Remnants of Cataclysm","bold":true}]
    $execute positioned 0 128 $(id)000 positioned as @n[type=marker,tag=dungeon_entrance] run playsound minecraft:entity.glow_squid.squirt master @s ~ ~ ~ 1 1.15
    $execute positioned 0 128 $(id)000 positioned as @n[type=marker,tag=dungeon_entrance] run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 1.05