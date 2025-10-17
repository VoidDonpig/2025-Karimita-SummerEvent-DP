#> player:init/
#
# player initiation
#
# @within player:tick

# set player id
    scoreboard players add $total_joined_player world 1
    scoreboard players operation @s player.id = $total_joined_player world

# set scoreboard
    scoreboard players display numberformat @s belowname_display blank
    scoreboard players set @s belowname 0

# place body item
    item replace entity @s armor.body with white_carpet
    item modify entity @s armor.body {function:"set_enchantments",enchantments:{"player:":1}}

# set gamemode
    gamemode adventure @s

# set status
    function player:init/status

# set team
    execute store result storage player: __temp__.player.id int 1 run scoreboard players get @s player.id
    function player:init/team with storage player: __temp__.player
    data remove storage player: __temp__
    function player:cosmetic/prefix/reset

# set storage
    function player:storage/create/

# teleport to hub
    execute in world:hub run tp @s 0 64 0

# set spawnpoint
    execute in world:hub run spawnpoint @s 0 64 0 0 0

# welcome message
    tellraw @s ["",{"text":"-----------------------------------------------------","strikethrough":true},"\n",\
    {"text":"Karimita Event Server in Winter 2025 にようこそ!"},"\n",\
    "\n",\
    {"text":"この世界では新たな敵や装備、職業などがあります。"},"\n",\
    "\n",\
    {"text":"この世界には、５つの職業が存在します。"},"\n",\
    {"text":"まずは ベイリー に話しかけて職業を決めましょう。"},"\n",\
    {"text":"職業はいつでも変更可能です。"},"\n",\
    "\n",\
    {"text":"さあ、この世界を遊びつくしましょう！"},"\n",\
    {"text":"------------------------------------------------------","strikethrough":true}]