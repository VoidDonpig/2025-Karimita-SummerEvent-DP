#> core:load/team
#
# create teams
#
# @within core:load/

# add teams
    team add no_collision
    team add class.knight
    team add class.archer
    team add class.assassin
    team add class.wizard
    team add class.healer
    team add class.knight_1
    team add class.archer_1
    team add class.assassin_1
    team add class.wizard_1
    team add class.healer_1
    team add class.knight_2
    team add class.archer_2
    team add class.assassin_2
    team add class.wizard_2
    team add class.healer_2
    team add class.knight_3
    team add class.archer_3
    team add class.assassin_3
    team add class.wizard_3
    team add class.healer_3

# modify teams
    # no_collision
        team modify no_collision collisionRule never
    # class.knight
        team modify class.knight suffix {"text": " ⚔","color":"gray"}
    # class.archer
        team modify class.archer suffix {"text": " ➶","color":"gray"}
    # class.assassin
        team modify class.assassin suffix {"text": " ☄","color":"gray"}
    # class.wizard
        team modify class.wizard suffix {"text": " ⚡","color":"gray"}
    # class.healer
        team modify class.healer suffix {"text": " ⚚","color":"gray"}
    # class.knight_1
        team modify class.knight_1 suffix {"text": " ⚔","color":"gold"}
    # class.archer_1
        team modify class.archer_1 suffix {"text": " ➶","color":"gold"}
    # class.assassin_1
        team modify class.assassin_1 suffix {"text": " ☄","color":"gold"}
    # class.wizard_1
        team modify class.wizard_1 suffix {"text": " ⚡","color":"gold"}
    # class.healer_1
        team modify class.healer_1 suffix {"text": " ⚚","color":"gold"}
    # class.knight_2
        team modify class.knight_2 suffix {"text": " ⚔","color":"aqua"}
    # class.archer_2
        team modify class.archer_2 suffix {"text": " ➶","color":"aqua"}
    # class.assassin_2
        team modify class.assassin_2 suffix {"text": " ☄","color":"aqua"}
    # class.wizard_2
        team modify class.wizard_2 suffix {"text": " ⚡","color":"aqua"}
    # class.healer_2
        team modify class.healer_2 suffix {"text": " ⚚","color":"aqua"}
    # class.knight_3
        team modify class.knight_3 prefix {"text": "⚜ ","color":"gold"}
        team modify class.knight_3 suffix {"text": " ⚔","color":"aqua"}
    # class.archer_3
        team modify class.archer_3 prefix {"text": "⚜ ","color":"gold"}
        team modify class.archer_3 suffix {"text": " ➶","color":"aqua"}
    # class.assassin_3
        team modify class.assassin_3 prefix {"text": "⚜ ","color":"gold"}
        team modify class.assassin_3 suffix {"text": " ☄","color":"aqua"}
    # class.wizard_3
        team modify class.wizard_3 prefix {"text": "⚜ ","color":"gold"}
        team modify class.wizard_3 suffix {"text": " ⚡","color":"aqua"}
    # class.healer_3
        team modify class.healer_3 prefix {"text": "⚜ ","color":"gold"}
        team modify class.healer_3 suffix {"text": " ⚚","color":"aqua"}