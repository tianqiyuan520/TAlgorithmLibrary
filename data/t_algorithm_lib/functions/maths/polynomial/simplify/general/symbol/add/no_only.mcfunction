##判断 是 */ ^
scoreboard players set #tal.maths.polynomial.success tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'*'} run scoreboard players set #tal.maths.polynomial.success tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'/'} run scoreboard players set #tal.maths.polynomial.success tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'^'} run scoreboard players set #tal.maths.polynomial.success tal.input 2

##不是
execute if score #tal.maths.polynomial.success tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add
##添加 ^
execute if score #tal.maths.polynomial.success tal.input matches 2 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add/add2
## * / 添加符号与数据
execute if score #tal.maths.polynomial.success tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add/add
