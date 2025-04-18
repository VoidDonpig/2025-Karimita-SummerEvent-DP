#> ui:init

# connect to player
    execute on attacker run scoreboard players operation $player.id temporary = @s player.id
    execute if score $player.id temporary = @p[tag=opened_ui] player.id positioned ~ ~-1.1 ~ run scoreboard players operation @s player.id = $player.id temporary
    scoreboard players reset $player.id temporary

# prevent ui to close
    execute if score @s player.id matches 1.. run scoreboard players reset @s autokill_timer