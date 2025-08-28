#> player:status/health/use/check
#
# health check
#
# @context health using item
#
# @reads
#   score $needed_health temporary
#       needed health for ability

# check health
    execute unless score @s health > $needed_health temporary run tag @s remove health_ok