#> player:init/status
#
# initialize status
#
# @within player:init/

# set status
    scoreboard players set @s health 200
    scoreboard players set @s max_health 200
    scoreboard players set @s mana 100
    scoreboard players set @s max_mana 100
    scoreboard players set @s armor 0
    scoreboard players set @s armor_toughness 0
    scoreboard players set @s movement_speed 100
    scoreboard players set @s attack_damage 10
    scoreboard players set @s attack_range 300
    scoreboard players set @s luck 0
    scoreboard players set @s knockback_resistance 0
    scoreboard players set @s attack_speed 100
    scoreboard players set @s gold 0

# set levels
    scoreboard players set @s class.knight.level 1
    scoreboard players set @s class.archer.level 1
    scoreboard players set @s class.assassin.level 1
    scoreboard players set @s class.wizard.level 1
    scoreboard players set @s class.healer.level 1

    scoreboard players set @s class.knight.exp 0
    scoreboard players set @s class.archer.exp 0
    scoreboard players set @s class.assassin.exp 0
    scoreboard players set @s class.wizard.exp 0
    scoreboard players set @s class.healer.exp 0

    scoreboard players set @s class.knight.total_exp 0
    scoreboard players set @s class.archer.total_exp 0
    scoreboard players set @s class.assassin.total_exp 0
    scoreboard players set @s class.wizard.total_exp 0
    scoreboard players set @s class.healer.total_exp 0

    scoreboard players set @s class.knight.next_exp 100
    scoreboard players set @s class.archer.next_exp 100
    scoreboard players set @s class.assassin.next_exp 100
    scoreboard players set @s class.wizard.next_exp 100
    scoreboard players set @s class.healer.next_exp 100