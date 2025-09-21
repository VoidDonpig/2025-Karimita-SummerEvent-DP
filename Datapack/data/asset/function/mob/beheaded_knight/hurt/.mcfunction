# asset:mob/beheaded_knight/hurt/
#
# hurt event
#
# @within mob:hurt/run

# sfx
    execute store result score $random temporary run random value 0..1
    execute if score $random temporary matches 0 run playsound entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ 0.6 1.0 0
    execute if score $random temporary matches 1 run playsound entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ 0.6 0.9 0
    playsound item.armor.equip_netherite hostile @a[distance=..32] ~ ~ ~ 0.2 2.0 0
    scoreboard players reset $random temporary