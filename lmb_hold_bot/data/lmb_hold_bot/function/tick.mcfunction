#置かれたlight[level=0]を消す
execute as @e[type=marker,tag=zzlmbhb] at @s run function lmb_hold_bot:system/light_block/fill_air
#プレイヤーごとtick
execute as @a run function lmb_hold_bot:system/p_tick