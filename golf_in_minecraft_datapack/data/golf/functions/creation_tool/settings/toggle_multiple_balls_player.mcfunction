execute if score #golf.settings.multiple_balls golf.settings matches 1 run tellraw @a {"text":"[Golf] Disabled Multiple Player Balls","color":"red"}
execute if score #golf.settings.multiple_balls golf.settings matches -1 run tellraw @a {"text":"[Golf] Enabled Multiple Player Balls","color":"green"}

scoreboard players operation #golf.settings.multiple_balls golf.settings *= #negative_one golf.CONSTANT