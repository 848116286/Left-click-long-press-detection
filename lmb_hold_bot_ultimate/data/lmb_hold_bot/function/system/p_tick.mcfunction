#検知用アイテムを持っているとき、頭周りにライトブロックを置く
execute if items entity @s weapon.mainhand *[item_model="lmb_hold"] run function lmb_hold_bot:system/light_block/set_position

#1tick前とスコアが同じ時、0に戻す
execute if score @s lmbhb.vla = @s lmbhb.vlc if items entity @s weapon.mainhand light[item_model="minecraft:lmb_hold"] run loot replace entity @s weapon.mainhand loot lmb_hold_bot:rmb_hold
execute if score @s lmbhb.vla = @s lmbhb.vlc run scoreboard players set @s lmbhb.vla 0
scoreboard players operation @s lmbhb.vlc = @s lmbhb.vlb
scoreboard players operation @s lmbhb.vlb = @s lmbhb.vla
execute if score @s lmbhb.vra = @s lmbhb.vrb run scoreboard players set @s lmbhb.vra 0
scoreboard players operation @s lmbhb.vrb = @s lmbhb.vra

