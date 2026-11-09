#tag付け
tag @s add zzlmbhbu
tag @s add zzgrass

#ブロックディスプレイの見た目を草にする
data modify entity @s block_state set value {id:"tall_grass",properties:{half:upper}}

#位置をスコア化
execute store result score @s lmbhb.pos_x run data get entity @s Pos[0]
execute store result score @s lmbhb.pos_z run data get entity @s Pos[2]

#X座標を0～268435455に正規化
data modify storage bot:lmb_hold x set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mod",left:{type:"minecraft:score",target:{type:"minecraft:context",target:"this"},score:"lmbhb.pos_x"},right:268435456},268435456]},right:268435456}

#Z座標を0～268435455に正規化
data modify storage bot:lmb_hold z set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mod",left:{type:"minecraft:score",target:{type:"minecraft:context",target:"this"},score:"lmbhb.pos_z"},right:268435456},268435456]},right:268435456}

#u = 3129871 * x
data modify storage bot:lmb_hold u set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[527,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"x"},right:16384}]},{type:"minecraft:mul",inputs:[16384,{type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[527,{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"x"},right:16384}]},{type:"minecraft:mul",inputs:[191,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"x"},right:16384}]}]},right:16384}]}]},right:268435456}

#v = 116129781 * z
data modify storage bot:lmb_hold v set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[16373,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"z"},right:16384}]},{type:"minecraft:mul",inputs:[16384,{type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[16373,{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"z"},right:16384}]},{type:"minecraft:mul",inputs:[7087,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"z"},right:16384}]}]},right:16384}]}]},right:268435456}

#XORを28ビット分計算
data modify storage bot:lmb_hold a set value 0
data modify storage bot:lmb_hold p set value 1
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor
function lmb_hold_bot:ultimate/grass/tall_grass_upper/xor

#q = a * a
data modify storage bot:lmb_hold q set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384},{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384}]},{type:"minecraft:mul",inputs:[16384,{type:"minecraft:mod",left:{type:"minecraft:mul",inputs:[2,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384},{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384}]},right:16384}]}]},right:268435456}

#cq = 42317861 * q
data modify storage bot:lmb_hold cq set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[14373,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"q"},right:16384}]},{type:"minecraft:mul",inputs:[16384,{type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[14373,{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"q"},right:16384}]},{type:"minecraft:mul",inputs:[2582,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"q"},right:16384}]}]},right:16384}]}]},right:268435456}

#r11 = 11 * a
data modify storage bot:lmb_hold r11 set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:mul",inputs:[11,{type:"minecraft:mod",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384}]},{type:"minecraft:mul",inputs:[16384,{type:"minecraft:mod",left:{type:"minecraft:mul",inputs:[11,{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"a"},right:16384}]},right:16384}]}]},right:268435456}

#b = 42317861 *a *a + 11 * a
data modify storage bot:lmb_hold b set compute default integer {type:"minecraft:mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"bot:lmb_hold",path:"cq"},{type:"minecraft:storage",storage:"bot:lmb_hold",path:"r11"}]},right:268435456}

#ズレをblock_displayに
data modify entity @s transformation.translation[0] set compute default float {type:"minecraft:sub",left:{type:"minecraft:div",left:{type:"minecraft:from_int",input:{type:"minecraft:mod",left:{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"b"},right:65536},right:16}},right:30.0},right:0.25}
data modify entity @s transformation.translation[2] set compute default float {type:"minecraft:sub",left:{type:"minecraft:div",left:{type:"minecraft:from_int",input:{type:"minecraft:mod",left:{type:"minecraft:div",left:{type:"minecraft:storage",storage:"bot:lmb_hold",path:"b"},right:16777216},right:16}},right:30.0},right:0.25}
