execute if score #golf.settings.hole_order golf.settings matches 1 run tellraw @a {"text":"[Golf] Disabled Tournament Strict Hole Order","color":"red"}
execute if score #golf.settings.hole_order golf.settings matches -1 run tellraw @a {"text":"[Golf] Enabled Tournament Strict Hole Order","color":"green"}

scoreboard players operation #golf.settings.hole_order golf.settings *= #negative_one golf.CONSTANT