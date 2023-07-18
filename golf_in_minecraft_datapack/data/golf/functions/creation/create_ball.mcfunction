function golf:deletion/clear_nearby_unclaimed_balls
summon mooshroom ~ ~ ~ {Glowing:1b,PersistenceRequired:1b,NoAI:0b,Health:1000000f,Age:-2000000000,Type:"brown",Tags:["golfBall","fresh"],CustomName:'{"text":"Fresh Golf Ball","color":"gray"}',Attributes:[{Name:generic.max_health,Base:1000000},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0}]}

execute at @e[type=mooshroom,tag=golfBall,tag=fresh,limit=1,sort=nearest] run playsound golf:ball ambient @a

# Execute phsyics for 2 seconds
scoreboard players set @e[type=mooshroom,distance=..10,tag=fresh] golf.timer 15
scoreboard players set #golf.physics_enabled golf.generic 15

# Assign this ball a hole ID
scoreboard players operation @e[type=mooshroom,distance=..10,tag=fresh] golf.currentHole = @e[type=interaction,limit=1,sort=nearest,tag=golfTee] golf.currentHole

# Random bullshit
tag @e[type=mooshroom,distance=..10,tag=fresh] remove fresh
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.01 5
playsound golf:woosh ambient @a ~ ~ ~ 1 0.6