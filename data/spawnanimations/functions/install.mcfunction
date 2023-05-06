## by Tschipcraft

scoreboard objectives add ts.sa.timer dummy
scoreboard objectives add ts.sa.count dummy
scoreboard objectives add tschipcraft.menu trigger
scoreboard objectives add ts.sa.welcome trigger

scoreboard objectives add ts.sa.x dummy
scoreboard objectives add ts.sa.y dummy
scoreboard objectives add ts.sa.z dummy

scoreboard objectives add ts.sa.settings dummy

# defaults
execute unless score ts.sa.distance ts.sa.settings matches 0..100 run scoreboard players set ts.sa.distance ts.sa.settings 20
execute unless score ts.sa.mode ts.sa.settings matches 0..1 run scoreboard players set ts.sa.mode ts.sa.settings 1
execute unless score ts.sa.hide ts.sa.settings matches 0..1 run scoreboard players set ts.sa.hide ts.sa.settings 1
execute unless score ts.sa.support ts.sa.settings matches 0..1 run scoreboard players set ts.sa.support ts.sa.settings 1

# Entity properties
scoreboard objectives add ts.sa.e.y dummy
scoreboard objectives add ts.sa.e.speed dummy
scoreboard objectives add ts.sa.e.Inv dummy
scoreboard objectives add ts.sa.e.stage dummy

# Initalise storage
data merge storage spawnanimations:temp {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

# Schedule loop
schedule clear spawnanimations:loop
schedule function spawnanimations:loop 1s

function spawnanimations:internal/version_checker/start
