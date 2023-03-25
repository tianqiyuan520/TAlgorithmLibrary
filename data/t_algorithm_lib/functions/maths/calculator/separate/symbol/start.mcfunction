##提取 连接的符号 括号外
#是否检测 ^ 符号
# scoreboard players set #tal.maths.calculator.check_power tal.str_parser 0
#是否只检测 + - 符号
# scoreboard players set #tal.maths.calculator.only tal.str_parser 0
#分离次数
# scoreboard players set #tal.maths.calculator.time tal.str_parser 999999
scoreboard players set #tal.maths.calculator.time_ tal.str_parser 0

#检测 括号 次数
scoreboard players set #tal.maths.calculator.paren tal.str_parser 0
#符号列表
data modify storage t_algorithm_lib:maths calculator.temp.per set value []
#新的数组
data modify storage t_algorithm_lib:maths calculator.temp.data2 set value []
##传入的数组
# data modify storage t_algorithm_lib:maths calculator.temp.data set value []


scoreboard players set #tal.maths.calculator.fail tal.str_parser 0
scoreboard players set #tal.maths.calculator.success tal.str_parser 0
scoreboard players set #tal.maths.calculator.success2 tal.str_parser 0

scoreboard players set #tal.maths.calculator.success3 tal.str_parser 10
function t_algorithm_lib:maths/calculator/separate/symbol/check_before

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.data
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/separate/symbol/loop

#是否检测 ^ 符号
scoreboard players set #tal.maths.calculator.check_power tal.str_parser 0
#是否只检测 + - 符号
scoreboard players set #tal.maths.calculator.only tal.str_parser 0
#分离次数
scoreboard players set #tal.maths.calculator.time tal.str_parser 999999