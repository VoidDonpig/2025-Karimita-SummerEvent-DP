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
    effect give @s[scores={class.assassin.level=1..19}] regeneration 1 2 false
    effect give @s[scores={class.assassin.level=20..39}] regeneration 1 3 false
    effect give @s[scores={class.assassin.level=40..}] regeneration 1 4 false

# add flag tag
    tag @s add statusupdate