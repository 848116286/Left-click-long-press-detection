#現在のビットを比較して結果へ加える
data modify storage bot:lmb_hold a set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},{type:"minecraft:mul",inputs:[{type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"bot:lmb_hold",path:"u"},{type:"minecraft:storage",storage:"bot:lmb_hold",path:"v"}]},right:2},{type:"minecraft:storage",storage:"bot:lmb_hold",path:"p"}]}]}

#次のビットへ進む
data modify storage bot:lmb_hold u set compute default integer {type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"u"},right:2}
data modify storage bot:lmb_hold v set compute default integer {type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"v"},right:2}
data modify storage bot:lmb_hold p set compute default integer {type:"minecraft:mul",inputs:[{type:"minecraft:storage",storage:"bot:lmb_hold",path:"p"},2]}

