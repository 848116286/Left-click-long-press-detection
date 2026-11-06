#検知用アイテムを持っていないとき、ゲームモードをスコア化
execute as @a unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=adventure] lmbhb.v 0
execute as @a unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=survival] lmbhb.v 1
execute as @a unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=creative] lmbhb.v 2
execute as @a unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run scoreboard players set @s[gamemode=spectator] lmbhb.v 3
#検知用アイテムを持っているとき、ゲームモードをサバイバルに
execute as @a[scores={lmbhb.v=0}] if items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run gamemode survival
#サバイバルモードで、前のゲームモードがadventureで、検知用アイテムを持っていないとき、adventureに戻す
execute as @a[scores={lmbhb.v=0}] unless items entity @s weapon.mainhand light[item_model="test_lmb_hold"] run gamemode adventure


## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
#2tick前とスコアが同じ時、0に戻す(1tickだと失敗しました...)
execute if score #a lmbhb.v = #b lmbhb.v run scoreboard players set #a lmbhb.v 0
scoreboard players operation #b lmbhb.v = #a lmbhb.v
scoreboard players operation #c lmbhb.v = #b lmbhb.v
scoreboard players operation #b lmbhb.v = #a lmbhb.v