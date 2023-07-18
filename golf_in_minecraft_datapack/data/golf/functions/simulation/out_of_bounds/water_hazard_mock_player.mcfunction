playsound minecraft:entity.player.splash hostile @a ~ ~ ~ 3 0.8
playsound golf:fart_2 player @a ~ ~ ~ 3 1

scoreboard players add #random_mock_message golf.generic 1
execute if score #random_mock_message golf.generic matches 1 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball is sleeping with the fishies!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 2 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball went for a swim!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 3 run tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":"'s ball got a bit moist!","color":"dark_red"}]
execute if score #random_mock_message golf.generic matches 3.. run scoreboard players set #random_mock_message golf.generic 0