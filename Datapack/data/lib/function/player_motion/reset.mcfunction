#> lib:player_motion/reset
#
# reset player motion
#
# @context reset player motion

# reset motion
    tp @s ~ 1000 ~
    tp @s ~ ~ ~

    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,WaitTime:0,potion_contents:{custom_effects:[{id:"slow_falling",duration:2,amplifier:1,show_particles:false}]},Radius:0.1,custom_particle:{type:block,block_state:"air"}}