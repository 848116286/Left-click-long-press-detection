#2tick前とスコアが同じなら、もう離したでしょう
execute if score @s lmbhb.va = @s lmbhb.vc if items entity @s weapon.mainhand light[item_model="minecraft:test_lmb_hold"] run loot replace entity @s weapon.mainhand loot lmb_hold_bot:test_rmb_hold
execute if score @s lmbhb.va = @s lmbhb.vc run scoreboard players set @s lmbhb.va 0
scoreboard players operation @s lmbhb.vc = @s lmbhb.vb
scoreboard players operation @s lmbhb.vb = @s lmbhb.va
execute if score @s lmbhb.vra = @s lmbhb.vrc run scoreboard players set @s lmbhb.vra 0
scoreboard players operation @s lmbhb.vrc = @s lmbhb.vrb
scoreboard players operation @s lmbhb.vrb = @s lmbhb.vra

