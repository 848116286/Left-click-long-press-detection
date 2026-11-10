#0~2147483646から乱数で出た値(int)をmacro.cdに入れる
data modify storage bot:lmb_hold macro.cmd set compute default integer {type:"uniform",min:0,max:2147483646}
#アイテムのcomponentを変更することで、前tickと別のアイテムであると認識するのでhit_blockが再度実行される。
function lmb_hold_bot:system/change_item_component with storage bot:lmb_hold macro
#スコアを加算
scoreboard players add @s lmbhb.vla 1
tellraw @s ["",{"text":"左クリック",color:red},{"text":"長押ししているtick数: "},{"score":{name:"@s",objective:"lmbhb.vla"},color:"green"}]