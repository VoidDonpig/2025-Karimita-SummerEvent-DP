#> player:class/healer/suffix/apply
#
# set suffix
#
# @within player:class/healer/suffix/

# set suffix
    $execute if score @s class.healer.level matches 1..29 run team modify player.team.$(id) suffix ["",{"text":" [","color":white},{"score":{name:"@s","objective":"class.healer.level"},"color":$(color)},{"text":"]","color":white},{"text": " ⚚","color":"gray"}]
    $execute if score @s class.healer.level matches 30..49 run team modify player.team.$(id) suffix ["",{"text":" [","color":white},{"score":{name:"@s","objective":"class.healer.level"},"color":$(color)},{"text":"]","color":white},{"text": " ⚚","color":"gold"}]
    $execute if score @s class.healer.level matches 50.. run team modify player.team.$(id) suffix ["",{"text":" [","color":white},{"score":{name:"@s","objective":"class.healer.level"},"color":$(color)},{"text":"]","color":white},{"text": " ⚚","color":"aqua"}]