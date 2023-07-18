scoreboard players set #golf.assigned golf.bool 0

execute as @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10] run scoreboard players set @s golf.currentHole 5
execute at @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10] run tellraw @s {"text":"[Golf] Assigned Hole 5 to a nearby Tee-Box.","color":"gold"}
execute at @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10] run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 10
execute at @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10] run playsound golf:ball ambient @a ~ ~ ~
execute as @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10] run scoreboard players set #golf.assigned golf.bool 1


execute unless score #golf.assigned golf.bool matches 1 as @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] run scoreboard players set @s golf.currentHole 5
execute unless score #golf.assigned golf.bool matches 1 at @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] run tellraw @s {"text":"[Golf] Assigned Hole 5 to a nearby Flag Pole.","color":"gold"}
execute unless score #golf.assigned golf.bool matches 1 at @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 10
execute unless score #golf.assigned golf.bool matches 1 at @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] run playsound golf:ball ambient @a ~ ~ ~
execute unless score #golf.assigned golf.bool matches 1 unless entity @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest,distance=..10] run tellraw @s {"text":"[Golf] Sorry!  I couldn't find anything to assign an ID.","color":"gold"}