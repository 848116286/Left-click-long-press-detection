loot replace entity @s weapon.mainhand loot lmb_hold_bot:test_lmb_hold
## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
scoreboard players add @s lmbhb.va 1
tellraw @s ["",{"text":"左クリック",color:red},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.va"},color:"green"}]