# Register a ball to a player
scoreboard players operation @s golf.id = @p[tag=golfBallHitting] golf.id

# Get the player's name on the Ball
# We first create a sign with the players name and then use the sign to put this on the Golf Ball
## TODO: If you want this sign somewhere else, edit this code.  You'll need to change all the coordinate values in lines 7-14.
# Create a sign with the players name
forceload add 100000 100000
setblock 100000 -60 100000 air
setblock 100000 -60 100000 oak_sign{front_text:{messages:['[{"selector":"@p[tag=golfBallHitting]","color":"gold"}]','{"text":""}','{"text":""}','{"text":""}']}} replace

# Set golf ball name to sign text
data modify entity @s CustomName set from block 100000 -60 100000 front_text.messages[0]
forceload remove 100000 100000

tag @s add golf.registered

execute if entity @p[tag=golfDebug] run say Registered Golf Ball.