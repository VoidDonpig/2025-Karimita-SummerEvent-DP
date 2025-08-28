#> asset:mob/revenant_priest/action/revenant_order/freeze
#
# freeze
#
# @within asset:mob/revenant_priest/action/phase*

# sit down
    summon armor_stand ~ ~1.6 ~ {Tags:["revenant_order_sit_armor_stand","not_init","autokill","no_passenger_kill"],Invisible:1b,Marker:1b,Silent:1b}
    ride @s mount @n[type=armor_stand,tag=revenant_order_sit_armor_stand,tag=not_init]
    execute on vehicle run tag @s remove not_init

# set invul
    data modify entity @s Invulnerable set value 1b

# caution
    title @a[distance=..64] times 0 60 0
    title @a[distance=..64] title {"text":"Revenant Order","color":"red"}
    title @a[distance=..64] subtitle {"text":"タイミングよく行動せよ！","color":"red"}

# playsound
    playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 2 1 0