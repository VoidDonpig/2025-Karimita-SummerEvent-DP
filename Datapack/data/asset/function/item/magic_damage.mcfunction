#> asset:item/magic_damage
#
# deal magic damage
#
# @context need "this" tag for player used magic

# damage
    $damage @s $(damage) lib:magic by @p[tag=this]
    $say $(damage)