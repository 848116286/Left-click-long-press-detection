scoreboard objectives add lmbhb.v dummy

scoreboard objectives add test used:light



tell @a reloaded

## !!以降長押しがどれだけ継続しているかをscore化しているだけなので、消しても問題は無い
scoreboard objectives add lmbhb.va dummy
scoreboard objectives add lmbhb.vb dummy
scoreboard objectives add lmbhb.vc dummy
scoreboard objectives add lmbhb.vra dummy
scoreboard objectives add lmbhb.vrb dummy
scoreboard objectives add lmbhb.vrc dummy
scoreboard objectives add lmbhb.vrd dummy
scoreboard objectives add lmbhb.vre dummy
scoreboard players set @a lmbhb.v 0
scoreboard players set @a lmbhb.v 0