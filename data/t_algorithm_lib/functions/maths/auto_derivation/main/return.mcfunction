##获取上一个的指针
execute store result score #tal.maths.derivation.main.index_p tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree[-2][1][0]
##获取 对应数据是否需导
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:maths auto_derivation.main_tree[-2][2]
scoreboard players operation #tal.array.get_element_by_index.index tal.str_parser = #tal.maths.derivation.main.index_p tal.str_parser
scoreboard players remove #tal.array.get_element_by_index.index tal.str_parser 1
function t_algorithm_lib:array/get_element_by_index/start
execute store result score #tal.maths.derivation.main.is_der_p tal.str_parser run data get storage t_algorithm_lib:array get_element_by_index.return

##判断
execute if score #tal.maths.derivation.main.index_p tal.str_parser matches 1.. if score #tal.maths.derivation.main.is_der_p tal.str_parser matches 1 run scoreboard players remove #tal.maths.derivation.main.index_p tal.str_parser 1

##重新赋值 
execute store result score #tal.maths.derivation.index tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree[-2][0]
execute store result score #tal.maths.derivation.index2 tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree[-2][0]
scoreboard players operation #tal.maths.derivation.index2 tal.str_parser -= #tal.maths.derivation.main.index_p tal.str_parser
function t_algorithm_lib:maths/auto_derivation/main/change

data remove storage t_algorithm_lib:maths auto_derivation.main_tree[-1]