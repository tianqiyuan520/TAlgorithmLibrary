execute store result score #tal.maths.polynomial.isDedup tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[0]
execute store result score #tal.maths.polynomial.isDedup2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[1]

execute if score #tal.maths.polynomial.isDedup tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return append from storage t_algorithm_lib:maths polynomial.generalize.dedup.list[0]
execute if score #tal.maths.polynomial.isDedup tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.main.temp.data2[-1] append from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]

data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.list[0]

data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[0]
##main
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.list2 set from storage t_algorithm_lib:maths polynomial.generalize.dedup.list
##判断符号
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.isDedup tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"/"} run scoreboard players set #tal.maths.polynomial.isDedup tal.str_parser 1
#移除 重复内容前的*/

execute if score #tal.maths.polynomial.isDedup2 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]
execute if score #tal.maths.polynomial.isDedup2 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths polynomial.main.temp.data2[-1][-1]

execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list

execute if score #tal.maths.polynomial.isDedup tal.str_parser matches 0 if score #tal.maths.polynomial.list_count tal.str_parser matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/loop
##
#添加

execute unless score #tal.maths.polynomial.isDedup2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.temp.data2[-1][-1] set from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]

##判断底数是否为数字，并直接前移
# execute store result score #tal.maths.polynomial.temp.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][0]
# data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
# execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][0][0][0]
# execute if score #tal.str.elements_type_check tal.str_parser matches 1 if score #tal.maths.polynomial.temp.list_count tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/prepend
##

execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/start