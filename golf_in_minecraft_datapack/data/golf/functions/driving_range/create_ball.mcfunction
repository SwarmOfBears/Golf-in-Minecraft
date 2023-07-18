summon mooshroom ~ ~ ~ {NoAI:0b,Glowing:1b,Health:1000000f,Age:-2000000000,Type:"brown",Tags:["golfBall","drivingRange","fresh"],CustomName:'{"text":"Driving Range Golf Ball","color":"gray"}',Attributes:[{Name:generic.max_health,Base:1000000},{Name:generic.movement_speed,Base:0},{Name:generic.knockback_resistance,Base:1.0}]}

# Execute phsyics for 2 seconds
scoreboard players set @e[type=mooshroom,distance=..10,tag=fresh] golf.timer 15
scoreboard players set #golf.physics_enabled golf.generic 15

tag @e[type=mooshroom,distance=..10,tag=fresh] remove fresh
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.01 5
playsound golf:woosh ambient @a ~ ~ ~ 1 0.6