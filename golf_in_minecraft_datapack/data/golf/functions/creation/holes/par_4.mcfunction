execute align xyz run tp @s ~0.5 ~ ~0.5

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Marker:1b,PersistenceRequired:1b,Tags:["golfHole","par4"]}

scoreboard players set @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] golf.currentHole -1

tellraw @s {"text":"[Golf] Built a Par 4 Flag Pole!  Remember to assign this Flag Pole a Hole ID using the Creation Tool!","color":"gold"}

function golf:creation/create_flag_pole