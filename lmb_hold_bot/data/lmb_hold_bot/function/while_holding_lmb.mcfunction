#左クリック押してる間ずっと(ほぼtickだけど、少し抜けがある)
scoreboard players add @s lmbhb.va 1
tellraw @s ["",{"text":"左クリック",color:red},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.va"},color:"green"}]
