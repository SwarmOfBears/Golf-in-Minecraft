playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 3 0.8
playsound golf:fart_2 player @a ~ ~ ~ 3 1

scoreboard players add #random_mock_message golf.generic 1
execute if score #random_mock_message golf.generic matches 1 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball is getting deep-fried!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 2 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball is a bit toasty!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 3 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball was turned to liquid golf-ball-paste!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 3.. run scoreboard players set #random_mock_message golf.generic 0