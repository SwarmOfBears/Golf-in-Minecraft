tellraw @p ["","\n","[",{"text":"Golf Creation Tool","color":"gold"},"] We've got that position stored: now, go and stand on the flag pole.","\n",{"text":"    <I'm at the Flag>","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function golf:creation_tool/utility/distance_calculator/finish"},"hoverEvent":{"action":"show_text","contents":[]}}]

execute store result score @s golf.motionX1 run data get entity @s Pos[0]
execute store result score @s golf.motionY1 run data get entity @s Pos[1]
execute store result score @s golf.motionZ1 run data get entity @s Pos[2]