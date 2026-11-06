#検知用アイテムを持っていないとき、ゲームモードをスコア化
execute as @a unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run function lmb_hold_bot:1_gamemode
execute as @a if items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] run scoreboard players set @s lmbhb.vt 0
execute as @a if items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run scoreboard players set @s lmbhb.vt 0
#検知用アイテムを持っているとき、ゲームモードをサバイバルに
execute as @a[scores={lmbhb.v=0}] if items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ light run gamemode survival @s
execute as @a[scores={lmbhb.v=0}] if items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] at @s anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ light run gamemode adventure @s
execute as @a[scores={lmbhb.v=0}] unless items entity @s weapon.mainhand command_block_minecart[item_model="test_lmb_hold"] unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run gamemode adventure @s

#右クリック検知
execute as @a if items entity @s weapon.mainhand command_block_minecart[minecraft:custom_data~{"bot":{"lmb_hold":-1b}}] run function lmb_hold_bot:while_holding_rmb


#2tick前とスコアが同じ時、0に戻す(1tickだと失敗しました...)
execute as @a run function lmb_hold_bot:1_score

