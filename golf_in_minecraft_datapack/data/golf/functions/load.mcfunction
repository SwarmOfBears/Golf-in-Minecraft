# Function to be ran when the world is loaded.

# Install pack if not already installed
scoreboard objectives add golf.bool dummy
execute unless score #golf.installed golf.bool matches 1 run function golf:install

scoreboard players set #golf.loaded golf.bool 0