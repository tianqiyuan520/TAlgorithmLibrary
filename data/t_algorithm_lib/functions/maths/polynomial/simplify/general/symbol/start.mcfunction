##提取 连接的符号 括号外   只检测 * / ^
#检测 括号 次数
scoreboard players set #tal.maths.polynomial.paren tal.str_parser 0
#符号列表
# data modify storage t_algorithm_lib:maths polynomial.temp.per set value []
#新的数组   [[["a"],["^"],[ ["a"],["+"],["c"]  ]] , ["*"],[["x"],["^"],[ ["a"],["+"],["c"]  ]]]
data modify storage t_algorithm_lib:maths polynomial.temp.data2 set value [[[]]]
data modify storage t_algorithm_lib:maths polynomial.temp.data3 set value []
##传入的数组
# data modify storage t_algorithm_lib:maths polynomial.temp.data set value [['x'],['*'],['a'],['^'],['('],['x'],[')'],['/'],[33],['/'],['b'],['*'],['x'],['*'],[33],['*'],[1]]

scoreboard players set #tal.maths.polynomial.fail tal.str_parser 0
scoreboard players set #tal.maths.polynomial.success tal.str_parser 0
scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 0

scoreboard players set #tal.maths.polynomial.success3 tal.str_parser 10
function t_algorithm_lib:maths/polynomial/simplify/general/symbol/check_before

execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data
scoreboard players set #tal.maths.polynomial.list_count_last tal.str_parser 0
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/loop

execute store result score #tal.maths.polynomial.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data2[-1]
execute if score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add/add_power
execute unless score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add_power2

data remove storage t_algorithm_lib:maths polynomial.temp.data3[0]

data modify storage t_algorithm_lib:maths polynomial.temp.data set value []
