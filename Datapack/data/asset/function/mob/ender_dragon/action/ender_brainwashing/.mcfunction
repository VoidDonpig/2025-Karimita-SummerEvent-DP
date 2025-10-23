#> asset:mob/ender_dragon/action/ender_brainwashing/
#
# ender brainwashing
#
# @within asset:mob/ender_dragon/action/phase+(02|03|04)
#
# @context as enderman

# agroo
    data modify entity @s AngryAt set from entity @p UUID

# set health
    data modify entity @s Health set value 0.1f

# set name
    data modify entity @s CustomName set value {text:"Dragonic Fanatic",color:"dark_purple"}

# set data
    data modify entity @s data.mob.id set value dragonic_fanatic
    tag @s add special_mob
    tag @s add dragonic_fanatic

# set speed
    attribute @s movement_speed base set 0.1
    attribute @s attack_damage base set 5

# sfx
    playsound entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 1 0.5
    playsound entity.ghast.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5
    execute anchored eyes run particle witch ^ ^ ^ 0.2 0.2 0.2 0 8 normal

# autokill
    tag @s add autokill
    scoreboard players set @s autokill_timer 1200