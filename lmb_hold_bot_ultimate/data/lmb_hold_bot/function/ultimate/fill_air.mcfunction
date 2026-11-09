execute as @s[tag=zzgrass] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ tall_grass[half=upper] strict
execute as @s[tag=zzladdereast] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ ladder[facing=east] strict
execute as @s[tag=zzladderwest] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ ladder[facing=west] strict
execute as @s[tag=zzladdernorth] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ ladder[facing=north] strict
execute as @s[tag=zzladdersouth] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ ladder[facing=south] strict
execute as @s[tag=zzironbars0000] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=false,south=false,west=false] strict
execute as @s[tag=zzironbars0001] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=false,south=false,west=true] strict
execute as @s[tag=zzironbars0010] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=false,south=true,west=false] strict
execute as @s[tag=zzironbars0011] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=false,south=true,west=true] strict
execute as @s[tag=zzironbars0100] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=true,south=false,west=false] strict
execute as @s[tag=zzironbars0101] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=true,south=false,west=true] strict
execute as @s[tag=zzironbars0110] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=true,south=true,west=false] strict
execute as @s[tag=zzironbars0111] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=false,north=true,south=true,west=true] strict
execute as @s[tag=zzironbars1000] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=false,south=false,west=false] strict
execute as @s[tag=zzironbars1001] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=false,south=false,west=true] strict
execute as @s[tag=zzironbars1010] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=false,south=true,west=false] strict
execute as @s[tag=zzironbars1011] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=false,south=true,west=true] strict
execute as @s[tag=zzironbars1100] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=true,south=false,west=false] strict
execute as @s[tag=zzironbars1101] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=true,south=false,west=true] strict
execute as @s[tag=zzironbars1110] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=true,south=true,west=false] strict
execute as @s[tag=zzironbars1111] if block ~ ~ ~ light[level=0] run fill ~ ~ ~ ~ ~ ~ iron_bars[east=true,north=true,south=true,west=true] strict















scoreboard players add @s lmbhb.vt 1
kill @s[scores={lmbhb.vt=2..}]