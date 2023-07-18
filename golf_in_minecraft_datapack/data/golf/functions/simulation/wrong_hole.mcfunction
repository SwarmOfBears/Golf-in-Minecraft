playsound minecraft:entity.donkey.angry hostile @a ~ ~ ~ 3 0.8
playsound golf:fart_2 player @a ~ ~ ~ 3 1

function golf:simulation/golf_ball_putt_cancel

tellraw @a [{"text":"[!] ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":" hit their ball into the wrong hole!  It looks like you were hitting from Hole ","color":"dark_red"},{"score":{"name": "@s","objective": "golf.currentHole"}},{"text":" but this Flag Pole is registered to Hole ","color":"dark_red"},{"score":{"name": "@e[type=armor_stand,tag=golfHole,limit=1,sort=nearest]","objective": "golf.currentHole"}}]