#左クリック押してる間ずっと(ほぼtickだけど、少し抜けがある)





## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
scoreboard players add @s lmbhb.va 1
tellraw @s ["",{"text":"左クリック",color:red},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.va"},color:"green"}]
