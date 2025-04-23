#> player:trigger/gained_gold
#
# gained combat gold event
#
# @within player:tick

# add gold
    scoreboard players operation @s gold += @s gold_queue
    # prevent overflow
        execute if score @s gold matches ..-1 run scoreboard players set @s gold 2147483647

# reset
    scoreboard players reset @s gold_queue