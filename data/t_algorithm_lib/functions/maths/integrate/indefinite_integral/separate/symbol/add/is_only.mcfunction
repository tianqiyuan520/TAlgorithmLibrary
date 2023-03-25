##判断 是 + 或 /
scoreboard players set #tal.maths.integrate.success tal.str_parser 0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'+'} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'-'} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

##不是
execute unless score #tal.maths.integrate.success tal.str_parser matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/add
##是 , 添加符号与数据
execute if score #tal.maths.integrate.success tal.str_parser matches 1 unless score #tal.maths.integrate.time tal.str_parser > #tal.maths.integrate.time_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/add
execute if score #tal.maths.integrate.success tal.str_parser matches 1 if score #tal.maths.integrate.time tal.str_parser > #tal.maths.integrate.time_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/add/add

