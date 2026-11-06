#0~848から乱数で出た値(float)をmacro.cdに入れる
data modify storage bot:lmb_hold macro.cd set compute default float {type:"uniform",min:0,max:848}
#アイテムのcomponentを変更することで、前tickと別のアイテムであると認識するのでhit_blockが再度実行される。
function lmb_hold_bot:1_change_some_component with storage bot:lmb_hold macro





#左クリック長押し中、実行したいfunctionを置く。
function lmb_hold_bot:while_holding_lmb
