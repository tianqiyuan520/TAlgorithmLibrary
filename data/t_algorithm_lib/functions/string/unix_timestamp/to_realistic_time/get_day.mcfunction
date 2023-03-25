##获取天数
scoreboard players set #tal.str.timestamp.a_day tal.str_parser 86400
scoreboard players set #tal.str.timestamp.day tal.str_parser 1
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser = #tal.str.timestamp.time tal.str_parser
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_day tal.str_parser
##减去天数
scoreboard players operation #tal.str.timestamp.a_day tal.str_parser *= #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.day tal.str_parser *= #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.time tal.str_parser -= #tal.str.timestamp.a_day tal.str_parser