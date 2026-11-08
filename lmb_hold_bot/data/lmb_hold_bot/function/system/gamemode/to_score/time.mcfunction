execute unless items entity @s weapon.mainhand *[item_model="lmb_hold"] run function lmb_hold_bot:system/gamemode/to_score/score
execute if items entity @s weapon.mainhand *[item_model="lmb_hold"] run scoreboard players set @s lmbhb.vt 0
