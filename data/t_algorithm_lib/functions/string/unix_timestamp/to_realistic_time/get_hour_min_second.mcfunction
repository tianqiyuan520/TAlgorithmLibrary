##判断小时 分钟 秒
scoreboard players set #tal.str.timestamp.a_hour tal.str_parser 3600
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser = #tal.str.timestamp.time tal.str_parser
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_hour tal.str_parser
##减去小时
scoreboard players operation #tal.str.timestamp.a_hour tal.str_parser *= #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.hour tal.str_parser = #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.time tal.str_parser -= #tal.str.timestamp.a_hour tal.str_parser

scoreboard players set #tal.str.timestamp.a_min tal.str_parser 60
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser = #tal.str.timestamp.time tal.str_parser
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_min tal.str_parser
##减去小时
scoreboard players operation #tal.str.timestamp.a_min tal.str_parser *= #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.min tal.str_parser = #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.time tal.str_parser -= #tal.str.timestamp.a_min tal.str_parser

##秒
scoreboard players operation #tal.str.timestamp.second tal.str_parser = #tal.str.timestamp.time tal.str_parser
