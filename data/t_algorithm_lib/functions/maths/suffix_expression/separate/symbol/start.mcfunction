##提取 连接的符号 括号外
#是否检测 ^ 符号
# scoreboard players set #tal.maths.suffix_expression.check_power tal.str_parser 0
#是否只检测 + - 符号
# scoreboard players set #tal.maths.suffix_expression.only tal.str_parser 0
#分离次数
# scoreboard players set #tal.maths.suffix_expression.time tal.str_parser 999999
scoreboard players set #tal.maths.suffix_expression.time_ tal.str_parser 0

#检测 括号 次数
scoreboard players set #tal.maths.suffix_expression.paren tal.str_parser 0
#符号列表
data modify storage t_algorithm_lib:maths suffix_expression.temp.per set value []
#新的数组
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 set value []
##传入的数组
# data modify storage t_algorithm_lib:maths suffix_expression.temp.data set value []


scoreboard players set #tal.maths.suffix_expression.fail tal.str_parser 0
scoreboard players set #tal.maths.suffix_expression.success tal.str_parser 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.str_parser 0

scoreboard players set #tal.maths.suffix_expression.success3 tal.str_parser 10
function t_algorithm_lib:maths/suffix_expression/separate/symbol/check_before

execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.temp.data
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/symbol/loop

#是否检测 ^ 符号
scoreboard players set #tal.maths.suffix_expression.check_power tal.str_parser 0
#是否只检测 + - 符号
scoreboard players set #tal.maths.suffix_expression.only tal.str_parser 0
#分离次数
scoreboard players set #tal.maths.suffix_expression.time tal.str_parser 999999