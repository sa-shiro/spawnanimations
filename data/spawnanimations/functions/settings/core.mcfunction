##by Tschipcraft

tellraw @s {"text":"=-=Spawn Animations Settings=-=","bold":true,"color":"dark_green"}

execute if score spa_distance spa_settings matches 1 run tellraw @s [{"text":"Activation Distance","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mobs closer to you than this value will play the animation"}]}},{"text":"   "},{"text":"<<< ","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Min is 1","color":"red"}]}},{"score":{"name":"spa_distance","objective":"spa_settings"},"color":"green","bold":true},{"text":" block","color":"green"},{"text":" >>>","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"+1"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/increase"}}]
execute if score spa_distance spa_settings matches 2..99 run tellraw @s [{"text":"Activation Distance","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mobs closer to you than this value will play the animation"}]}},{"text":"   "},{"text":"<<< ","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"-1"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/decrease"}},{"score":{"name":"spa_distance","objective":"spa_settings"},"color":"green","bold":true},{"text":" blocks","color":"green"},{"text":" >>>","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"+1"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/increase"}}]
execute if score spa_distance spa_settings matches 100 run tellraw @s [{"text":"Activation Distance","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mobs closer to you than this value will play the animation"}]}},{"text":"   "},{"text":"<<< ","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"-1"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/decrease"}},{"score":{"name":"spa_distance","objective":"spa_settings"},"color":"green","bold":true},{"text":" blocks","color":"green"},{"text":" >>>","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Max is 100","color":"red"}]}}]


execute if score spa_mode spa_settings matches 1 run tellraw @s ["",{"text":"Activation mode","bold":true},{"text":"   "},{"text":"[>classic<]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Out of range mobs will stay hidden until a player is in range"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/classic"}},{"text":"  |  "},{"text":"[vanilla]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Out of range mobs will spawn normally"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/vanilla"}}]
execute if score spa_mode spa_settings matches 0 run tellraw @s ["",{"text":"Activation mode","bold":true},{"text":"   "},{"text":"[classic]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Out of range mobs will stay hidden until a player is in range"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/classic"}},{"text":"  |  "},{"text":"[>vanilla<]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Out of range mobs will spawn normally"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/vanilla"}}]
