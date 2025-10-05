#> ui:shop/init
#
# init ui
#
# @context shop

tag @s remove ui_init
scoreboard players set @s autokill_timer 3

# save uuid
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/shop=true}] UUID

# set uuid
    execute on passengers on passengers run data modify entity @s data.shop_data set from storage ui: shop_data
    execute on passengers on passengers run scoreboard players set @s shop_page 0

# init ui
    execute on passengers run function ui:shop/page/init {page:0}