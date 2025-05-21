#> mob:init/common
#
# set common data
#
# @within mob:init/

# set enchantment
    execute if entity @s[type=!horse,type=!donkey,type=!mule,type=!llama] run data modify entity @s equipment.body set value {id:"dirt",count:1,components:{"minecraft:enchantments":{"mob:":1}}}
    execute unless entity @s[type=!horse,type=!donkey,type=!mule,type=!llama] run data modify entity @s equipment.feet set value {id:"dirt",count:1,components:{"minecraft:enchantments":{"mob:":1}}}
    data modify entity @s data.mob.id set from storage mob:init id

# increase follow range
    attribute @s minecraft:follow_range modifier add mob:init/common-follow_range 2.0 add_multiplied_base

# prevent drop
    data modify entity @s drop_chances set value {"body":0.0f,"chest":0.0f,"feet":0.0f,head:0.0f,legs:0.0f,mainhand:0.0f,offhand:0.0f,saddle:0.0f}
    data modify entity @s CanPickUpLoot set value 0b

# mob id
    scoreboard players add $total_mobs world 1
    scoreboard players operation @s mob.id = $total_mobs world

# clone id value
    scoreboard players operation $clone.mob.id temporary = @s mob.id

# add tag
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_0.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_0.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_1.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_1.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_2.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_2.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_3.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_3.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_4.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_4.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_5.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_5.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_6.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_6.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_7.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_7.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_8.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_8.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_9.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_9.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_10.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_10.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_11.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_11.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_12.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_12.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_13.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_13.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_14.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_14.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_15.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_15.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_16.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_16.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_17.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_17.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_18.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_18.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_19.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_19.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_20.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_20.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_21.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_21.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_22.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_22.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_23.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_23.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_24.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_24.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_25.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_25.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_26.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_26.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_27.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_27.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_28.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_28.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_29.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_29.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_30.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_30.1
    scoreboard players operation $clone.mob.id temporary *= $2 constant
    execute if score $clone.mob.id temporary matches 00.. run tag @s add mob.id_31.0
    execute if score $clone.mob.id temporary matches ..-1 run tag @s add mob.id_31.1

# reset
    scoreboard players reset $clone.mob.id temporary