





## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
scoreboard players add #a lmbhb.v 1
tellraw @s ["",{"text":"長押ししているtick数: "},{"score":{name:"#a",objective:"lmbhb.v"},color:"green"}]
