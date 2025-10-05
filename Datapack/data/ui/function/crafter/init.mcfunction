#> ui:crafter/init
#
# ui init
#
# @within ui:crafter/summon

# init
    tag @s remove ui_init
    scoreboard players set @s autokill_timer 3
    
# get player UUID
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/crafter=true}] UUID

# UI init
    execute on passengers run function ui:crafter/page/init