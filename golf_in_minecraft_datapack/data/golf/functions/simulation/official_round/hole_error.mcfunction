playsound minecraft:entity.donkey.angry hostile @a ~ ~ ~ 3 0.8
playsound golf:fart_2 player @a ~ ~ ~ 3 1

tellraw @s [{"text":"[!] Error - you're playing the wrong hole!  According to tournament rules, you need to finish Hole ","color":"dark_red"},{"score":{"name": "@s","objective": "golf.currentHole"}},{"text":" first!","color":"dark_red"}]