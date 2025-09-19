particle soul_fire_flame ~-0.5 ~-0.5 ~-0.5 ~10000000 ~ ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~0.5 ~-0.5 ~-0.5 ~ ~ ~10000000 0.0000000066 0 normal @a
    particle soul_fire_flame ~0.5 ~-0.5 ~0.5 ~-10000000 ~ ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~-0.5 ~-0.5 ~0.5 ~ ~ ~-10000000 0.0000000066 0 normal @a

    particle soul_fire_flame ~0.5 ~0.5 ~-0.5 ~-10000000 ~ ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~0.5 ~0.5 ~0.5 ~ ~ ~-10000000 0.0000000066 0 normal @a
    particle soul_fire_flame ~-0.5 ~0.5 ~0.5 ~10000000 ~ ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~-0.5 ~0.5 ~-0.5 ~ ~ ~10000000 0.0000000066 0 normal @a

    particle soul_fire_flame ~-0.5 ~-0.5 ~-0.5 ~ ~10000000 ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~0.5 ~0.5 ~-0.5 ~ ~-10000000 ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~0.5 ~-0.5 ~0.5 ~ ~10000000 ~ 0.0000000066 0 normal @a
    particle soul_fire_flame ~-0.5 ~0.5 ~0.5 ~ ~-10000000 ~ 0.0000000066 0 normal @a
    particle sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.04 1 normal @a
    execute if predicate lib:periodic/40 run playsound block.portal.ambient hostile @a[distance=..16] ~ ~ ~ 0.25 0.75 0
    execute if predicate lib:periodic/20 run playsound block.portal.ambient hostile @a[distance=..16] ~ ~ ~ 0.25 1.2 0
    execute if predicate lib:periodic/10 run playsound block.portal.ambient hostile @a[distance=..16] ~ ~ ~ 0.25 1.8 0
    execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"periodic_tick": 80}} run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.25 2 0

    data modify storage world: __temp__.x set from entity @s Pos[0]
    data modify storage world: __temp__.y set from entity @s Pos[1]
    data modify storage world: __temp__.z set from entity @s Pos[2]
    function world:spawner/particle/trail with storage world: __temp__
    data remove storage world: __temp__

    particle dust{color:[0.122,0.973,1.000],scale:1.3} ~ ~ ~ 0.2 0.2 0.2 0 2 normal @a
    particle dust{color:[0.741,1.000,0.957],scale:1.3} ~ ~ ~ 0.2 0.2 0.2 0 2 normal @a

    particle trial_spawner_detection_ominous ~ ~ ~ 0.4 0.4 0.4 0 4 normal @a