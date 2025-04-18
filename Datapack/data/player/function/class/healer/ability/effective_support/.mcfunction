#> player:class/healer/ability/effective_support/
#
# reduce mana cost
#
# @context healing related items

# reduce mana use
    scoreboard players set $effective_support temporary 800
    scoreboard players operation $effective_support_level temporary = @s class.healer.level
    scoreboard players operation $effective_support_level temporary *= $6 constant
    scoreboard players operation $effective_support temporary -= $effective_support_level temporary
    scoreboard players operation $needed_mana temporary *= $effective_support temporary
    scoreboard players operation $needed_mana temporary /= $1000 constant

# reset
    scoreboard players reset $effective_support temporary
    scoreboard players reset $effective_support_level temporary