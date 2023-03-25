##提取 连接的符号 括号外
#是否检测 ^ 符号
# scoreboard players set #tal.maths.integrate.check_power tal.str_parser 0
#是否只检测 + - 符号
# scoreboard players set #tal.maths.integrate.only tal.str_parser 0
#分离次数
# scoreboard players set #tal.maths.integrate.time tal.str_parser 999999
scoreboard players set #tal.maths.integrate.time_ tal.str_parser 0

#检测 括号 次数
scoreboard players set #tal.maths.integrate.paren tal.str_parser 0
#符号列表
data modify storage t_algorithm_lib:maths integrate.temp.per set value []
#新的数组
data modify storage t_algorithm_lib:maths integrate.temp.data2 set value [[]]
##传入的数组
# data modify storage t_algorithm_lib:maths integrate.temp.data set value []


scoreboard players set #tal.maths.integrate.fail tal.str_parser 0
scoreboard players set #tal.maths.integrate.success tal.str_parser 0
scoreboard players set #tal.maths.integrate.success2 tal.str_parser 0

scoreboard players set #tal.maths.integrate.success3 tal.str_parser 10
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/check_before


execute store result score #tal.maths.integrate.list_count tal.str_parser run data get storage t_algorithm_lib:maths integrate.temp.data
execute if score #tal.maths.integrate.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/loop

#是否检测 ^ 符号
scoreboard players set #tal.maths.integrate.check_power tal.str_parser 0
#是否只检测 + - 符号
scoreboard players set #tal.maths.integrate.only tal.str_parser 0
#分离次数
scoreboard players set #tal.maths.integrate.time tal.str_parser 999999