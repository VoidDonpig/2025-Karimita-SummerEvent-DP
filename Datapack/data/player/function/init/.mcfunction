#> player:init/
#
# player initiation
#
# @within player:tick

# set player id
    scoreboard players add $total_joined_player world 1
    scoreboard players operation @s player.id = $total_joined_player world

# set gamemode
    gamemode adventure @s

# set status
    function player:init/status

# join knight
    function player:class/knight/join

# tag status update
    tag @s add statusupdate

# teleport to hub
    execute in world:hub run tp @s 0 63 0

# set spawnpoint
    execute in world:hub run spawnpoint @s 0 63 0 0

# welcome message
    tellraw @s ["",{"text":"-----------------------------------------------------",strikethrough:true},"\n",\
    {"text":"Karimita Event Server in summer 2025 にようこそ!"},"\n",\
    "\n",\
    {"text":"この世界では新たな敵や装備、職業などがあります。"},"\n",\
    "\n",\
    {"text":"デフォルトでは最初の職業は剣士となっています。"},"\n",\
    {"text":"職業は ベイリー に話しかけることでいつでも変えることができます。"},"\n",\
    "\n",\
    {"text":"さあ、この世界を遊びつくしましょう！"},"\n",\
    {"text":"-----------------------------------------------------",strikethrough:true}]