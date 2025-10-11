#> asset:mob/wither/action/curse_of_wither/text

# set text
    data merge entity @s {billboard:"center",text:'[{"text":"聖なるエメラルド","color": "green","bold": true}]',Tags:["autokill"]}
    scoreboard players set @s autokill_timer 200