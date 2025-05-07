#> mob:death/loot/
#
# loot event
#
# @within mob:death/

# loot
    execute if data entity @s[tag=!already_looted] {data:{mob:{boss:0b}}} run function mob:death/loot/normal
    execute if data entity @s[tag=!already_looted] {data:{mob:{boss:1b}}} run function mob:death/loot/boss