#custom_dataをランダムな値に変更することでアイテムの更新を起こし、再度hit_blockによって検知できるようにする
$item modify entity @s weapon.mainhand {\
    "type":"set_components",\
    "components":{\
    "custom_data":{\
        "bot":{\
            "lmb_hold": $(cd)\
            }\
        }\
    }\
}