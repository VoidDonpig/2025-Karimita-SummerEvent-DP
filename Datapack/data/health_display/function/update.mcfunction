#> health_display:update
#
# update health display
#
# @within health_display:init

# get name
    data modify storage health_display: name set from entity @s data.mob.name

# set text
    tag @s add health_update_this
    execute unless data entity @s {data:{mob:{id:wither_emperor}}} run data modify entity 83a-51-1-0-2 text set value ["",{"text":"﴾ ","color":"gold",bold:false},{"nbt":"name","storage":"health_display:","interpret":true}," ",{"score":{"objective":"mob.health","name":"@n[tag=health_update_this]"},"color":"#FFFFFF","bold": true},{"text":"❤","color":"#FF5555",bold:false},{"text":" ﴿","color":"gold",bold:false}]
    execute if data entity @s {data:{mob:{id:wither_emperor}}} run data modify entity 83a-51-1-0-2 text set value ["",{"text":"﴾ ","color":"gold",bold:false},{"nbt":"name","storage":"health_display:","interpret":true,bold:false,"obfuscated":true}," ",{"score":{"objective":"mob.health","name":"@n[tag=health_update_this]"},"color":"#FFFFFF","bold": true},{"text":"❤","color":"#FF5555",bold:false},{"text":" ﴿","color":"gold",bold:false}]
    tag @s remove health_update_this
    data modify entity @s CustomName set from entity 83a-51-1-0-2 text

# reset
    data remove storage health_display: name