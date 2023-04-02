##获取月份
##先获取年中第几天
scoreboard players set #tal.str.timestamp.a_day tal.input 86400
scoreboard players operation #tal.str.timestamp.time2 tal.input = #tal.str.timestamp.time tal.input
scoreboard players operation #tal.str.timestamp.time2 tal.input /= #tal.str.timestamp.a_day tal.input
##计算大概的月份

scoreboard players set #tal.str.timestamp.a_month tal.input 30
scoreboard players operation #tal.str.timestamp.time2 tal.input /= #tal.str.timestamp.a_month tal.input
scoreboard players add #tal.str.timestamp.time2 tal.input 1

scoreboard players operation #tal.str.timestamp.month tal.input = #tal.str.timestamp.time2 tal.input

##判断闰年
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1972 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1976 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1980 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1984 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1988 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1992 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 1996 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2000 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2004 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2008 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2012 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2016 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2020 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2024 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2028 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2032 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2036 run scoreboard players remove #tal.str.timestamp.time tal.input 86400
execute if score #tal.str.timestamp.month tal.input matches 3.. if score #tal.str.timestamp.year tal.input matches 2040 run scoreboard players remove #tal.str.timestamp.time tal.input 86400

##减去已经过的月份
execute if score #tal.str.timestamp.month tal.input matches 1 run scoreboard players remove #tal.str.timestamp.time tal.input 0
execute if score #tal.str.timestamp.month tal.input matches 2 run scoreboard players remove #tal.str.timestamp.time tal.input 2678400
execute if score #tal.str.timestamp.month tal.input matches 3 run scoreboard players remove #tal.str.timestamp.time tal.input 5097600
execute if score #tal.str.timestamp.month tal.input matches 4 run scoreboard players remove #tal.str.timestamp.time tal.input 7776000
execute if score #tal.str.timestamp.month tal.input matches 5 run scoreboard players remove #tal.str.timestamp.time tal.input 10368000
execute if score #tal.str.timestamp.month tal.input matches 6 run scoreboard players remove #tal.str.timestamp.time tal.input 13046400
execute if score #tal.str.timestamp.month tal.input matches 7 run scoreboard players remove #tal.str.timestamp.time tal.input 15638400
execute if score #tal.str.timestamp.month tal.input matches 8 run scoreboard players remove #tal.str.timestamp.time tal.input 18316800
execute if score #tal.str.timestamp.month tal.input matches 9 run scoreboard players remove #tal.str.timestamp.time tal.input 20995200
execute if score #tal.str.timestamp.month tal.input matches 10 run scoreboard players remove #tal.str.timestamp.time tal.input 23587200
execute if score #tal.str.timestamp.month tal.input matches 11 run scoreboard players remove #tal.str.timestamp.time tal.input 26265600
execute if score #tal.str.timestamp.month tal.input matches 12 run scoreboard players remove #tal.str.timestamp.time tal.input 28857600

