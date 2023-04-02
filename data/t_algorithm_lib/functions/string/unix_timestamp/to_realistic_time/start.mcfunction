##时间戳 秒级的
execute store result score #tal.str.timestamp.time tal.input run data get storage t_algorithm_lib:string timestamp.time
##时区 +8h
scoreboard players add #tal.str.timestamp.time tal.input 28800



scoreboard players add #tal.str.timestamp.time tal.input 86400

##判断年份
function t_algorithm_lib:string/unix_timestamp/to_realistic_time/get_year
# ##判断月份
function t_algorithm_lib:string/unix_timestamp/to_realistic_time/get_month
# # ##判断天数
function t_algorithm_lib:string/unix_timestamp/to_realistic_time/get_day
# # ##判断小时 分钟 秒
function t_algorithm_lib:string/unix_timestamp/to_realistic_time/get_hour_min_second
##显示
tellraw @a [{"score":{"name": "#tal.str.timestamp.year","objective": "tal.input"}},{"text": " "},{"score":{"name": "#tal.str.timestamp.month","objective": "tal.input"}},{"text": " "},{"score":{"name": "#tal.str.timestamp.day","objective": "tal.input"}},{"text": " "},{"score":{"name": "#tal.str.timestamp.hour","objective": "tal.input"}},{"text": " "},{"score":{"name": "#tal.str.timestamp.min","objective": "tal.input"}},{"text": " "},{"score":{"name": "#tal.str.timestamp.second","objective": "tal.input"}}]
