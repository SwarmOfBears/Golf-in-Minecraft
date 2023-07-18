# Ran every minecraft game-tick
# Simulation is only ran after a golf hit for 10 seconds

execute if score #golf.physics_enabled golf.generic matches 0.. run function golf:simulation/main
execute as @a if score @s golf.creationTool matches 1.. if entity @s[nbt={SelectedItem:{tag:{creationKit:1}}}] run function golf:creation_tool/main

execute if score #golf.loaded golf.bool matches 0 if entity @p run function golf:load_message