#> player:status/actionbar
#
# show status acitonbar
#
# @within player:tick

# show actionbar
    execute if predicate player:team/class.knight if score @s class.knight.level matches ..49 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"score":{"name": "@s","objective": "class.knight.level"},"color": "white"},\
    {"text": " (","color": "gray"},\
    {"score":{"name": "@s","objective": "class.knight.exp"},"color": "green"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "class.knight.next_exp"},"color": "gray"},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]
    execute if predicate player:team/class.knight if score @s class.knight.level matches 50 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"text": "50","color": "white"},\
    {"text": " (","color": "gray"},\
    {"text": "MAX","color": "white","bold": true},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]

    execute if predicate player:team/class.archer if score @s class.archer.level matches ..49 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"score":{"name": "@s","objective": "class.archer.level"},"color": "white"},\
    {"text": " (","color": "gray"},\
    {"score":{"name": "@s","objective": "class.archer.exp"},"color": "green"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "class.archer.next_exp"},"color": "gray"},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]
    execute if predicate player:team/class.archer if score @s class.archer.level matches 50 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"text": "50","color": "white"},\
    {"text": " (","color": "gray"},\
    {"text": "MAX","color": "white","bold": true},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]

    execute if predicate player:team/class.assassin if score @s class.assassin.level matches ..49 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"score":{"name": "@s","objective": "class.assassin.level"},"color": "white"},\
    {"text": " (","color": "gray"},\
    {"score":{"name": "@s","objective": "class.assassin.exp"},"color": "green"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "class.assassin.next_exp"},"color": "gray"},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]
    execute if predicate player:team/class.assassin if score @s class.assassin.level matches 50 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"text": "50","color": "white"},\
    {"text": " (","color": "gray"},\
    {"text": "MAX","color": "white","bold": true},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]

    execute if predicate player:team/class.wizard if score @s class.wizard.level matches ..49 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"score":{"name": "@s","objective": "class.wizard.level"},"color": "white"},\
    {"text": " (","color": "gray"},\
    {"score":{"name": "@s","objective": "class.wizard.exp"},"color": "green"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "class.wizard.next_exp"},"color": "gray"},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]
    execute if predicate player:team/class.wizard if score @s class.wizard.level matches 50 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"text": "50","color": "white"},\
    {"text": " (","color": "gray"},\
    {"text": "MAX","color": "white","bold": true},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]

    execute if predicate player:team/class.healer if score @s class.healer.level matches ..49 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"score":{"name": "@s","objective": "class.healer.level"},"color": "white"},\
    {"text": " (","color": "gray"},\
    {"score":{"name": "@s","objective": "class.healer.exp"},"color": "green"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "class.healer.next_exp"},"color": "gray"},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]
    execute if predicate player:team/class.healer if score @s class.healer.level matches 50 run \
    title @s actionbar \
    [{"text": "✎ ","color": "aqua"},\
    {"score":{"name": "@s","objective": "mana"},"color": "white"},\
    {"text": "/","color": "gray"},\
    {"score":{"name": "@s","objective": "max_mana"},"color": "gray"},\
    {"text": "      "},\
    {"text": "Lv. ","color": "green"},\
    {"text": "50","color": "white"},\
    {"text": " (","color": "gray"},\
    {"text": "MAX","color": "white","bold": true},\
    {"text": ")","color": "gray"},\
    {"text": "      "},\
    {"text": "Ⓖ ","color": "gold"},\
    {"score":{"name": "@s","objective": "gold"},"color": "white"},\
    {"text": " G","color": "gray"}]