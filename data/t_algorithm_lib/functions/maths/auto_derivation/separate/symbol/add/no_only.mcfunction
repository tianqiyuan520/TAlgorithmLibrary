##判断 是 +-*/     ^
scoreboard players set #tal.maths.derivation.success tal.str_parser 0
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'+'} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'-'} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if score #tal.maths.derivation.check_power tal.str_parser matches 1 if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1

##不是
execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add
##是 , 添加符号与数据
execute if score #tal.maths.derivation.success tal.str_parser matches 1 unless score #tal.maths.derivation.time tal.str_parser > #tal.maths.derivation.time_ tal.str_parser run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add
execute if score #tal.maths.derivation.success tal.str_parser matches 1 if score #tal.maths.derivation.time tal.str_parser > #tal.maths.derivation.time_ tal.str_parser run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add/add
