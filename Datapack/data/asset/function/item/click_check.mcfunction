#> asset:item/click_check
#
# clicking check
#
# @context using_item

# Can or Cannot
    tag @s add click_ok

# Check Click
    execute if entity @s[tag=clicking] run tag @s remove click_ok
    tag @s add add_clicking_tag