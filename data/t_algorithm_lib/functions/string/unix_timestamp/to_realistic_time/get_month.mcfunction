##获取月份
##先获取年中第几天
scoreboard players set #tal.str.timestamp.a_day tal.str_parser 86400
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser = #tal.str.timestamp.time tal.str_parser
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_day tal.str_parser
##计算大概的月份

scoreboard players set #tal.str.timestamp.a_month tal.str_parser 30
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_month tal.str_parser
scoreboard players add #tal.str.timestamp.time2 tal.str_parser 1

scoreboard players operation #tal.str.timestamp.month tal.str_parser = #tal.str.timestamp.time2 tal.str_parser

##判断闰年
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1972 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1976 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1980 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1984 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1988 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1992 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 1996 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2000 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2004 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2008 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2012 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2016 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2020 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2024 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2028 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2032 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2036 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.month tal.str_parser matches 3.. if score #tal.str.timestamp.year tal.str_parser matches 2040 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400

##减去已经过的月份
execute if score #tal.str.timestamp.month tal.str_parser matches 1 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 0
execute if score #tal.str.timestamp.month tal.str_parser matches 2 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 2678400
execute if score #tal.str.timestamp.month tal.str_parser matches 3 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 5097600
execute if score #tal.str.timestamp.month tal.str_parser matches 4 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 7776000
execute if score #tal.str.timestamp.month tal.str_parser matches 5 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 10368000
execute if score #tal.str.timestamp.month tal.str_parser matches 6 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 13046400
execute if score #tal.str.timestamp.month tal.str_parser matches 7 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 15638400
execute if score #tal.str.timestamp.month tal.str_parser matches 8 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 18316800
execute if score #tal.str.timestamp.month tal.str_parser matches 9 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 20995200
execute if score #tal.str.timestamp.month tal.str_parser matches 10 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 23587200
execute if score #tal.str.timestamp.month tal.str_parser matches 11 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 26265600
execute if score #tal.str.timestamp.month tal.str_parser matches 12 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 28857600

