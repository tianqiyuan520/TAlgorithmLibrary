data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0]
function t_algorithm_lib:array/elements_type_check/start
data modify storage t_algorithm_lib:maths integrate.main.change set value [[0]]
data modify storage t_algorithm_lib:maths integrate.main.change[0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0]
##如果为数字
scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 0
execute if data storage t_algorithm_lib:array temp{return:'TAG_Int'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 1
##如果为自变量
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths integrate.main.change set value [["x"],["^"],[2]]
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths integrate.main.change set value [[3],['*'],["x"]]
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths integrate.main.change[0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0]


##重新赋值 
execute store result score #tal.maths.integrate.index tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-1][0]
execute store result score #tal.maths.integrate.index2 tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-1][0]
scoreboard players add #tal.maths.integrate.index tal.str_parser 1
scoreboard players add #tal.maths.integrate.index2 tal.str_parser 1
scoreboard players operation #tal.maths.integrate.index2 tal.str_parser -= #tal.maths.integrate.main.index tal.str_parser
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/change




