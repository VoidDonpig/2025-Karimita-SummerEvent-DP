#> ui:combiner/init

# init
    tag @s remove ui_init
    scoreboard players set @s autokill_timer 3
    
# get player UUID
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/combiner=true}] UUID

# UI init
    execute on passengers run function ui:combiner/page/init