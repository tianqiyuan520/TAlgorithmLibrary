##获取天数
scoreboard players set #tal.str.timestamp.a_day tal.input 86400
scoreboard players set #tal.str.timestamp.day tal.input 1
scoreboard players operation #tal.str.timestamp.time2 tal.input = #tal.str.timestamp.time tal.input
scoreboard players operation #tal.str.timestamp.time2 tal.input /= #tal.str.timestamp.a_day tal.input
##减去天数
scoreboard players operation #tal.str.timestamp.a_day tal.input *= #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.day tal.input *= #tal.str.timestamp.time2 tal.input
scoreboard players operation #tal.str.timestamp.time tal.input -= #tal.str.timestamp.a_day tal.input