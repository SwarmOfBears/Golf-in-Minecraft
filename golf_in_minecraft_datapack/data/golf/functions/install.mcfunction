# Function to setup golf in a new world.  Only run once.

scoreboard objectives add golf.hits dummy
scoreboard objectives add golf.score dummy {"text":"Golf Score ♩.","color":"gold"}
scoreboard objectives add golf.currentHole dummy
scoreboard objectives add golf.generic dummy
scoreboard objectives add golf.timer dummy
scoreboard objectives add golf.putterTimer dummy
scoreboard objectives add golf.id dummy
scoreboard objectives add golf.musicRepeat dummy
scoreboard objectives add golf.creationTool minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add golf.settings dummy

scoreboard objectives add golf.motionX1 dummy
scoreboard objectives add golf.motionY1 dummy
scoreboard objectives add golf.motionZ1 dummy

scoreboard objectives add golf.motionX2 dummy
scoreboard objectives add golf.motionY2 dummy
scoreboard objectives add golf.motionZ2 dummy

scoreboard objectives add golf.motionX3 dummy
scoreboard objectives add golf.motionY3 dummy
scoreboard objectives add golf.motionZ3 dummy

# Constants
scoreboard objectives add golf.CONSTANT dummy
scoreboard players set #two golf.CONSTANT 2
scoreboard players set #three golf.CONSTANT 3
scoreboard players set #four golf.CONSTANT 4
scoreboard players set #five golf.CONSTANT 5
scoreboard players set #six golf.CONSTANT 6
scoreboard players set #seven golf.CONSTANT 7
scoreboard players set #negative_one golf.CONSTANT -1

# Default settings values
scoreboard players set #golf.settings.load_message golf.settings 1
scoreboard players set #golf.settings.hole_order golf.settings 1
scoreboard players set #golf.settings.multiple_balls golf.settings -1
scoreboard players set #golf.settings.interference_penalty golf.settings 1

# Disable Command Block Output
gamerule commandBlockOutput false

scoreboard players set #golf.installed golf.bool 1

tellraw @a {"text":"[Golf] Succesfully installed Golf in Minecraft - Datapack!","color":"green"}