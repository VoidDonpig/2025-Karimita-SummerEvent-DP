#> core:load/recipe
#
# define recipe
#
# DO NOT SET DATA MORE THAN 7 ITEMS IN ONE LIST
#
# @within core:load/

# set data
    # reset
        data remove storage ui:recipe recipe
    # weapon
        data modify storage ui:recipe recipe.weapon append value \
        [\
        {"result":"weapon/melee/sword_of_braveness","count":1,"recipe_components":[{"name":"minecraft:netherite_sword","count":1,"custom":0,"inheritance":1,custom_data:{}},{"name":"minecraft:netherite_ingot","count":4,"custom":0,"inheritance":0,custom_data:{}}]}\
        ]