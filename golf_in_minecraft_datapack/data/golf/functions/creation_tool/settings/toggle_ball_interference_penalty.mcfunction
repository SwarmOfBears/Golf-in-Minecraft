execute if score #golf.settings.interference_penalty golf.settings matches 1 run tellraw @a {"text":"[Golf] Disabled Ball Interference Penalty","color":"red"}
execute if score #golf.settings.interference_penalty golf.settings matches -1 run tellraw @a {"text":"[Golf] Enabled Ball Interference Penalty","color":"green"}

scoreboard players operation #golf.settings.interference_penalty golf.settings *= #negative_one golf.CONSTANT