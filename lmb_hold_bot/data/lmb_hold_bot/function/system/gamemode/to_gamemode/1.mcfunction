gamemode survival @s
execute if items entity @s weapon.mainhand command_block_minecart[item_model="lmb_hold"] run function lmb_hold_bot:system/gamemode/to_gamemode/head_pos
execute if items entity @s weapon.mainhand light[item_model="lmb_hold"] run function lmb_hold_bot:system/gamemode/to_gamemode/head_pos