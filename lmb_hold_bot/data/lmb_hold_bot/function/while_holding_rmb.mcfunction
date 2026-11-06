loot replace entity @s weapon.mainhand loot lmb_hold_bot:test_rmb_hold

#右クリック押してる間ずっと
scoreboard players add @s lmbhb.vra 1
tellraw @s ["",{"text":"右クリック",color:blue},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.vra"},color:"green"}]
