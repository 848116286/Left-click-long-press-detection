execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
execute at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
execute at @s anchored eyes positioned ^1 ^ ^1 if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
execute at @s anchored eyes positioned ^-1 ^ ^1 if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
execute at @s anchored eyes positioned ^1 ^ ^ if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
execute at @s anchored eyes positioned ^-1 ^ ^ if block ~ ~ ~ air run function lmb_hold_bot:system/light_block/fill_light
#ブロックディスプレイに変換
execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #lmb_hold_bot:detectable run function lmb_hold_bot:ultimate/fill_light
