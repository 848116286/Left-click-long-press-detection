#頭の位置がライトブロックじゃなかったらアドベンチャーモード、ライトブロックならサバイバルモード
gamemode adventure @s
execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ light run gamemode survival @s