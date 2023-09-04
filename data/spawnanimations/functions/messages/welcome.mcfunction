## by Tschipcraft

tellraw @s ["",{"text":"\n▶ Spawn Animations v${version} by Tschipcraft installed!","italic":false,"color":"green"},{"text":"\n"},{"text":"[Settings]","color":"aqua","clickEvent":{"action":"run_command","value":"/function spawnanimations:settings"},"hoverEvent":{"action":"show_text","contents":"☵ Open the settings menu"}},{"text":" "},{"text":"[Reset]","color":"red","clickEvent":{"action":"run_command","value":"/function spawnanimations:reset"},"hoverEvent":{"action":"show_text","contents":"⏏ Reset the data pack/mod."}},{"text":" "},{"text":"[Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function spawnanimations:uninstall"},"hoverEvent":{"action":"show_text","contents":"⏻ Uninstall the data pack/mod.","color":"white"}},{"text":" \n"},{"text":"[Report an issue]","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/Tschipcraft/spawnanimations/issues/new/choose"},"hoverEvent":{"action":"show_text","contents":"✉ Report an issue on GitHub."}},{"text":" "},{"text":"[Check for updates]","color":"blue","clickEvent":{"action":"open_url","value":"https://tschipcraft.ddns.net/update/test.html?pack=spawnanimations&v=${version}"},"hoverEvent":{"action":"show_text","contents":"🔔 Check for updates on my website."}}]
scoreboard players set @s ts.sa.welcome 1
