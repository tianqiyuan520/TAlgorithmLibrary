##判断 是 +-*/     ^
scoreboard players set #tal.maths.calculator.success tal.input 0
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.success tal.input 1
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.success tal.input 1

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.success tal.input 1
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.success tal.input 1

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if score #tal.maths.calculator.check_power tal.input matches 1 if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run scoreboard players set #tal.maths.calculator.success tal.input 1

##不是
execute unless score #tal.maths.calculator.success tal.input matches 1 run function t_algorithm_lib:maths/calculator/separate/symbol/add
##是 , 添加符号与数据
execute if score #tal.maths.calculator.success tal.input matches 1 unless score #tal.maths.calculator.time tal.input > #tal.maths.calculator.time_ tal.input run function t_algorithm_lib:maths/calculator/separate/symbol/add
execute if score #tal.maths.calculator.success tal.input matches 1 if score #tal.maths.calculator.time tal.input > #tal.maths.calculator.time_ tal.input run function t_algorithm_lib:maths/calculator/separate/symbol/add/add
