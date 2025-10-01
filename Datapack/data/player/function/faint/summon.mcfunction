#> player:faint/summon
#
# summon mannequin
#
# @within player:faint/

# summon
    $execute in $(dimension) run summon minecraft:mannequin $(x) $(y) $(z) {Passengers:[{id:"minecraft:armor_stand",Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b,Tags:["not_init","player.faint_text_timer","autokill","no_vehicle_kill"],CustomName:["",{"score":{"name":"$sec","objective":"temporary"},color:"yellow"},{"text":".","color":yellow},{"score":{"name":"$dec","objective":"temporary"},color:"yellow"}],CustomNameVisible:1b,Passengers:[{id:"minecraft:armor_stand",Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b,Tags:["not_init","player.faint_text_name","autokill","no_vehicle_kill"],CustomName:["",{"text":"$(name)","color":"white","bold":true}],CustomNameVisible:1b,Passengers:[{id:"minecraft:armor_stand",Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b,Tags:["not_init","player.faint_text_revive","autokill","no_vehicle_kill"],CustomName:["",{"text":"近づいてスニークで蘇生","color":"green","bold":true}],CustomNameVisible:1b}]}]}],pose:sleeping,profile:"$(name)",immovable:1b,Invulnerable:1b,Tags:["player.faint_mannequin","not_init","asset"]}
    $execute in $(dimension) run tp @s $(x) $(y) $(z)
    attribute @n[type=armor_stand,tag=player.faint_text_timer,tag=not_init] scale base set 0.1
    attribute @n[type=armor_stand,tag=player.faint_text_name,tag=not_init] scale base set 0.3
    attribute @n[type=armor_stand,tag=player.faint_text_revive,tag=not_init] scale base set 0.3
    gamemode spectator @s
    tp @s @n[type=mannequin,tag=player.faint_mannequin,tag=not_init]
    scoreboard players operation @n[type=mannequin,tag=player.faint_mannequin,tag=not_init] player.id = @s player.id
    spectate @n[type=mannequin,tag=player.faint_mannequin,tag=not_init]
    tag @n[type=mannequin,tag=player.faint_mannequin,tag=not_init] remove not_init
    tag @n[type=armor_stand,tag=player.faint_text_timer,tag=not_init] remove not_init
    tag @n[type=armor_stand,tag=player.faint_text_name,tag=not_init] remove not_init
    tag @n[type=armor_stand,tag=player.faint_text_revive,tag=not_init] remove not_init

# set timer
    scoreboard players set @s player.death_timer 200