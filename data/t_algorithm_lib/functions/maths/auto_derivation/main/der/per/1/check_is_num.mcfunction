data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
function t_algorithm_lib:array/elements_type_check/start
data modify storage t_algorithm_lib:maths auto_derivation.main.change set value [[0]]
##如果为数字
scoreboard players set #tal.maths.derivation.main.check_s tal.str_parser 0
execute if data storage t_algorithm_lib:array temp{return:'TAG_Int'} run scoreboard players set #tal.maths.derivation.main.check_s tal.str_parser 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.derivation.main.check_s tal.str_parser 1
##如果为自变量
data modify storage t_algorithm_lib:maths auto_derivation.temp.check_variable set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute store success score #tal.maths.derivation.check_variable tal.str_parser run data modify storage t_algorithm_lib:maths auto_derivation.temp.check_variable set from storage t_algorithm_lib:maths auto_derivation.variable
##是自变量
execute if score #tal.maths.derivation.check_variable tal.str_parser matches 0 unless score #tal.maths.derivation.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths auto_derivation.main.change set value [[1]]
execute if score #tal.maths.derivation.check_variable tal.str_parser matches 1 unless score #tal.maths.derivation.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths auto_derivation.main.change set value [[0]]


##重新赋值 
execute store result score #tal.maths.derivation.index tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0]
execute store result score #tal.maths.derivation.index2 tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0]
scoreboard players add #tal.maths.derivation.index tal.str_parser 1
scoreboard players add #tal.maths.derivation.index2 tal.str_parser 1
scoreboard players operation #tal.maths.derivation.index2 tal.str_parser -= #tal.maths.derivation.main.index tal.str_parser
function t_algorithm_lib:maths/auto_derivation/main/der/per/1/change




