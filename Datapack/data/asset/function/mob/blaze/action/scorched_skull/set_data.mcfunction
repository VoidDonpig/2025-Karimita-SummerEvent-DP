#> asset:mob/blaze/action/scorched_skull/set_data
#
# set data
#
# @within asset:mob/blaze/action/scorched_skull/fireball

# set data
    data modify entity @s Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @s Owner set from entity @n[tag=this] UUID
    data modify entity @s Tags set value ["autokill","scorched_skull"]
    data modify entity @s LeftOwner set value 0b
    data modify entity @s ExplosionPower set value 2
    data modify entity @s HasVisualFire set value 1b
    data modify entity @s Invulnerable set value true
    scoreboard players set @s autokill_timer 600