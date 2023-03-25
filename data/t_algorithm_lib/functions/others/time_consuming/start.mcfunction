###代码耗时检测
##ms级别
##原理 worldborder get 时，会根据时间进行校对
##[自定义输入]是否输出耗时
# scoreboard players set #tal.time_consuming.output tal.str_parser 0

execute in t_algorithm_lib:main run worldborder set 60000000
scoreboard players set #tal.time_consuming.num tal.str_parser 60000000
##开始计时
execute in t_algorithm_lib:main run worldborder add -50000000 50000
##返回值#tal.time_consuming.result tal.str_parser

