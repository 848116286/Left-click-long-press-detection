#まず、左クリックを最初にしたら、以降はライトブロックに持ち替えて長押し検知可能な状態にする
loot replace entity @s weapon.mainhand loot lmb_hold_bot:lmb_hold
#一回目も忘れずスコアを加算
scoreboard players add @s lmbhb.va 1
tellraw @s ["",{"text":"左クリック",color:red},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.va"},color:"green"}]