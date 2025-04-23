#> player:trigger/gained_exp.combat
#
# gained combat exp event
#
# @within player:tick

# add total exp
    execute if predicate player:team/class.knight run scoreboard players operation @s class.knight.total_exp += @s exp_queue.combat
    execute if predicate player:team/class.archer run scoreboard players operation @s class.archer.total_exp += @s exp_queue.combat
    execute if predicate player:team/class.assassin run scoreboard players operation @s class.assassin.total_exp += @s exp_queue.combat
    execute if predicate player:team/class.wizard run scoreboard players operation @s class.wizard.total_exp += @s exp_queue.combat
    execute if predicate player:team/class.healer run scoreboard players operation @s class.healer.total_exp += @s exp_queue.combat
    # prevent overflow
        execute if score @s class.knight.total_exp matches ..-1 run scoreboard players set @s class.knight.total_exp 2147483647
        execute if score @s class.archer.total_exp matches ..-1 run scoreboard players set @s class.archer.total_exp 2147483647
        execute if score @s class.assassin.total_exp matches ..-1 run scoreboard players set @s class.assassin.total_exp 2147483647
        execute if score @s class.wizard.total_exp matches ..-1 run scoreboard players set @s class.wizard.total_exp 2147483647
        execute if score @s class.healer.total_exp matches ..-1 run scoreboard players set @s class.healer.total_exp 2147483647

# add exp
    execute if predicate player:team/class.knight run scoreboard players operation @s class.knight.exp += @s exp_queue.combat
    execute if predicate player:team/class.archer run scoreboard players operation @s class.archer.exp += @s exp_queue.combat
    execute if predicate player:team/class.assassin run scoreboard players operation @s class.assassin.exp += @s exp_queue.combat
    execute if predicate player:team/class.wizard run scoreboard players operation @s class.wizard.exp += @s exp_queue.combat
    execute if predicate player:team/class.healer run scoreboard players operation @s class.healer.exp += @s exp_queue.combat

# level up if reach requirement
    execute if predicate player:team/class.knight if score @s class.knight.level matches ..49 if score @s class.knight.exp >= @s class.knight.next_exp run function player:class/knight/levelup
    execute if predicate player:team/class.archer if score @s class.archer.level matches ..49 if score @s class.archer.exp >= @s class.archer.next_exp run function player:class/archer/levelup
    execute if predicate player:team/class.assassin if score @s class.assassin.level matches ..49 if score @s class.assassin.exp >= @s class.assassin.next_exp run function player:class/assassin/levelup
    execute if predicate player:team/class.wizard if score @s class.wizard.level matches ..49 if score @s class.wizard.exp >= @s class.wizard.next_exp run function player:class/wizard/levelup
    execute if predicate player:team/class.healer if score @s class.healer.level matches ..49 if score @s class.healer.exp >= @s class.healer.next_exp run function player:class/healer/levelup

# reset
    scoreboard players reset @s exp_queue.combat