execute if score #golf.settings.load_message golf.settings matches 1 run tellraw @a {"text":"[Golf] Disabled Datapack Load Message","color":"red"}
execute if score #golf.settings.load_message golf.settings matches -1 run tellraw @a {"text":"[Golf] Enabled Datapack Load Message","color":"green"}

scoreboard players operation #golf.settings.load_message golf.settings *= #negative_one golf.CONSTANT