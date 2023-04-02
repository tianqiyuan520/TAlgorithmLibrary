##提取 连接的符号 括号外
#是否检测 ^ 符号
# scoreboard players set #tal.maths.suffix_expression.check_power tal.input 0
#是否只检测 + - 符号
# scoreboard players set #tal.maths.suffix_expression.only tal.input 0
#分离次数
# scoreboard players set #tal.maths.suffix_expression.time tal.input 999999
scoreboard players set #tal.maths.suffix_expression.time_ tal.input 0

#检测 括号 次数
scoreboard players set #tal.maths.suffix_expression.paren tal.input 0
#符号列表
data modify storage t_algorithm_lib:maths suffix_expression.temp.per set value []
#新的数组
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 set value []
##传入的数组
# data modify storage t_algorithm_lib:maths suffix_expression.temp.data set value []


scoreboard players set #tal.maths.suffix_expression.fail tal.input 0
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0

scoreboard players set #tal.maths.suffix_expression.success3 tal.input 10
function t_algorithm_lib:maths/suffix_expression/separate/symbol/check_before

execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.temp.data
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/symbol/loop

#是否检测 ^ 符号
scoreboard players set #tal.maths.suffix_expression.check_power tal.input 0
#是否只检测 + - 符号
scoreboard players set #tal.maths.suffix_expression.only tal.input 0
#分离次数
scoreboard players set #tal.maths.suffix_expression.time tal.input 999999