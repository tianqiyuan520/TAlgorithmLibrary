##判断小时 分钟 秒
scoreboard players set #tal.str.timestamp.a_hour tal.input 3600
scoreboard players operation #tal.str.timestamp.time2 tal.input = #tal.str.timestamp.time tal.input
scoreboard players operation #tal.str.timestamp.time2 tal.input /= #tal.str.timestamp.a_hour tal.input
##减去小时
scoreboard players operation #tal.str.timestamp.a_hour tal.input *= #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.hour tal.input = #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.time tal.input -= #tal.str.timestamp.a_hour tal.input

scoreboard players set #tal.str.timestamp.a_min tal.input 60
scoreboard players operation #tal.str.timestamp.time2 tal.input = #tal.str.timestamp.time tal.input
scoreboard players operation #tal.str.timestamp.time2 tal.input /= #tal.str.timestamp.a_min tal.input
##减去小时
scoreboard players operation #tal.str.timestamp.a_min tal.input *= #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.min tal.input = #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.time tal.input -= #tal.str.timestamp.a_min tal.input

##秒
scoreboard players operation #tal.str.timestamp.second tal.input = #tal.str.timestamp.time tal.input
