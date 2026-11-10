#頭の位置のブロックをブロックディスプレイにしてlight[level=0]にします。
execute if block ~ ~ ~ tall_grass[half=upper] run function lmb_hold_bot:ultimate/grass/tall_grass_upper/bd
execute if block ~ ~ ~ ladder run function lmb_hold_bot:ultimate/ladder/facing
execute if block ~ ~ ~ iron_bars run function lmb_hold_bot:ultimate/iron_bars/properties
execute if block ~ ~ ~ water[level=0] run function lmb_hold_bot:ultimate/water/water
execute if block ~ ~ ~ #buttons run function lmb_hold_bot:ultimate/button/type











