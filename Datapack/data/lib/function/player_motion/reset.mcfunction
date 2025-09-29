#> lib:player_motion/reset
#
# reset player motion
#
# @context reset player motion

# reset motion
    summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["reset_motion"]}
    ride @s mount @n[tag=reset_motion]
    ride @s dismount
    kill @n[tag=reset_motion]

    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,WaitTime:0,potion_contents:{custom_effects:[{id:"slow_falling",duration:2,amplifier:1,show_particles:false}]},Radius:0.1,custom_particle:{type:block,block_state:"air"}}

# reset actionbar
    function player:status/actionbar