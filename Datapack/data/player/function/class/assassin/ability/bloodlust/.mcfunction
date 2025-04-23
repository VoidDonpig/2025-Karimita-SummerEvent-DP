#> player:class/assassin/ability/bloodlust/
#
# bloodlust process
#
# @handles player:class/assassin/bloodlust

# calculcation  
    scoreboard players add @s bloodlust_count 10
    execute if score @s class.assassin.level matches 1..19 if score @s bloodlust_count matches 60.. run scoreboard players set @s bloodlust_count 50
    execute if score @s class.assassin.level matches 20..39 if score @s bloodlust_count matches 110.. run scoreboard players set @s bloodlust_count 100
    execute if score @s class.assassin.level matches 40.. if score @s bloodlust_count matches 160.. run scoreboard players set @s bloodlust_count 150

    scoreboard players operation @s bloodlust_attack_damage = @s bloodlust_count
    execute if score @s class.assassin.level matches 1..19 run scoreboard players operation @s bloodlust_attack_damage *= $1 constant
    execute if score @s class.assassin.level matches 20..39 run scoreboard players operation @s bloodlust_attack_damage *= $2 constant
    execute if score @s class.assassin.level matches 40.. run scoreboard players operation @s bloodlust_attack_damage *= $3 constant

    execute if score @s class.assassin.level matches 1..19 run scoreboard players set @s bloodlust_timer 100
    execute if score @s class.assassin.level matches 20..39 run scoreboard players set @s bloodlust_timer 200
    execute if score @s class.assassin.level matches 40.. run scoreboard players set @s bloodlust_timer 300

# add flag tag
    tag @s add statusupdate

# reset
    advancement revoke @s only player:class/assassin/bloodlust