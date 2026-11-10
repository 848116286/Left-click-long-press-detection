execute if entity @s[tag=zzgrass] run setblock ~ ~ ~ tall_grass[half=upper] strict
execute if entity @s[tag=zzladder] run function lmb_hold_bot:ultimate/fill_air/ladder
execute if entity @s[tag=zzironbars] run function lmb_hold_bot:ultimate/fill_air/iron_bars
execute if entity @s[tag=zzwater] if block ~ ~ ~ light[waterlogged=true,level=0] run setblock ~ ~ ~ water strict
execute if entity @s[tag=zzbutton_oak] run function lmb_hold_bot:ultimate/fill_air/oak_button
execute if entity @s[tag=zzbutton_stone] run function lmb_hold_bot:ultimate/fill_air/stone_button
execute if entity @s[tag=zzbutton_spruce] run function lmb_hold_bot:ultimate/fill_air/spruce_button
execute if entity @s[tag=zzbutton_birch] run function lmb_hold_bot:ultimate/fill_air/birch_button
execute if entity @s[tag=zzbutton_jungle] run function lmb_hold_bot:ultimate/fill_air/jungle_button
execute if entity @s[tag=zzbutton_acacia] run function lmb_hold_bot:ultimate/fill_air/acacia_button
execute if entity @s[tag=zzbutton_dark_oak] run function lmb_hold_bot:ultimate/fill_air/dark_oak_button
execute if entity @s[tag=zzbutton_pale_oak] run function lmb_hold_bot:ultimate/fill_air/pale_oak_button
execute if entity @s[tag=zzbutton_crimson] run function lmb_hold_bot:ultimate/fill_air/crimson_button
execute if entity @s[tag=zzbutton_warped] run function lmb_hold_bot:ultimate/fill_air/warped_button
execute if entity @s[tag=zzbutton_mangrove] run function lmb_hold_bot:ultimate/fill_air/mangrove_button
execute if entity @s[tag=zzbutton_bamboo] run function lmb_hold_bot:ultimate/fill_air/bamboo_button
execute if entity @s[tag=zzbutton_cherry] run function lmb_hold_bot:ultimate/fill_air/cherry_button
execute if entity @s[tag=zzbutton_poplar] run function lmb_hold_bot:ultimate/fill_air/poplar_button
execute if entity @s[tag=zzbutton_polished_blackstone] run function lmb_hold_bot:ultimate/fill_air/polished_blackstone_button













scoreboard players add @s lmbhb.vt 1
kill @s[scores={lmbhb.vt=2..}]