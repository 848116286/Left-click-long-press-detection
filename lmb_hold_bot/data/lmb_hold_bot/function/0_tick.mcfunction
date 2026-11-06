#検知用アイテムを持っていないとき、ゲームモードをスコア化
execute as @a unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=adventure] lmbhb.v 0
execute as @a unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=survival] lmbhb.v 1
execute as @a unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=creative] lmbhb.v 2
execute as @a unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=spectator] lmbhb.v 3
#検知用アイテムを持っているとき、ゲームモードをサバイバルに
execute as @a[scores={lmbhb.v=0}] if items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run gamemode survival
#サバイバルモードで、前のゲームモードがadventureで、検知用アイテムを持っていないとき、adventureに戻す
execute as @a[scores={lmbhb.v=0}] unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run gamemode adventure


#右クリック検知
execute as @a if items entity @s weapon.mainhand command_block_minecart[minecraft:custom_data~{"bot":{"lmb_hold":-1b}}] run function lmb_hold_bot:while_holding_rmb

## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
#2tick前とスコアが同じ時、0に戻す(1tickだと失敗しました...)
execute as @a run function lmb_hold_bot:1_score
