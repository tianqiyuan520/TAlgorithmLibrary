##判断 是 +-*/     ^
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'+'} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'-'} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'*'} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'/'} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute if score #tal.maths.suffix_expression.check_power tal.input matches 1 if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'^'} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1

##不是
execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run function t_algorithm_lib:maths/suffix_expression/separate/symbol/add
##是 , 添加符号与数据
execute if score #tal.maths.suffix_expression.success tal.input matches 1 unless score #tal.maths.suffix_expression.time tal.input > #tal.maths.suffix_expression.time_ tal.input run function t_algorithm_lib:maths/suffix_expression/separate/symbol/add
execute if score #tal.maths.suffix_expression.success tal.input matches 1 if score #tal.maths.suffix_expression.time tal.input > #tal.maths.suffix_expression.time_ tal.input run function t_algorithm_lib:maths/suffix_expression/separate/symbol/add/add
