#> player:class/assassin/ability/bloodlust/
#
# bloodlust process
#
# @handles player:class/assassin/bloodlust

# calculcation  
    scoreboard players add @s bloodlust_count 1
    execute if score @s class.assassin.level matches 1..19 if score @s bloodlust_count matches 6.. run scoreboard players set @s bloodlust_count 5
    execute if score @s class.assassin.level matches 20..39 if score @s bloodlust_count matches 11.. run scoreboard players set @s bloodlust_count 10
    execute if score @s class.assassin.level matches 40.. if score @s bloodlust_count matches 16.. run scoreboard players set @s bloodlust_count 15

    execute if score @s class.assassin.level matches 1..19 run scoreboard players set @s bloodlust_timer 100
    execute if score @s class.assassin.level matches 20..39 run scoreboard players set @s bloodlust_timer 200
    execute if score @s class.assassin.level matches 40.. run scoreboard players set @s bloodlust_timer 300

# heal
    execute unless score @s player.modified_health = @s player.modified_health store result score @s player.modified_health run data get entity @s Health 100
    execute store result score $heal_amount temporary run attribute @s max_health get 100
    scoreboard players operation $multiply temporary = @s class.assassin.level
    scoreboard players operation $multiply temporary *= $5 constant
    scoreboard players add $multiply temporary 250
    scoreboard players operation $heal_amount temporary *= $multiply temporary
    scoreboard players operation $heal_amount temporary /= $10000 constant
    scoreboard players operation @s player.modified_health += $heal_amount temporary

# add flag tag
    tag @s add statusupdate

# reset
    scoreboard players reset $player.modified_health
    scoreboard players reset $heal_amount temporary
    scoreboard players reset $multiply temporary