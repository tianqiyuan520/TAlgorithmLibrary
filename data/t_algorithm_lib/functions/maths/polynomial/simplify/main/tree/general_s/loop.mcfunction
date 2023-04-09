#判断 +-符号 确认添加方式
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.temp.data[0][0]
scoreboard players set #tal.maths.polynomial.list_count tal.input 0
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.list_count tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.list_count tal.input 1
#符号
execute if score #tal.maths.polynomial.list_count tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.temp.data2 append from storage t_algorithm_lib:maths polynomial.main.temp.data[0]
#非符号
execute if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.main.temp.data2 append value []
execute if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.data set from storage t_algorithm_lib:maths polynomial.main.temp.data[0]
execute if score #tal.maths.polynomial.list_count tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/start


data remove storage t_algorithm_lib:maths polynomial.main.temp.data[0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.main.temp.data
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/general_s/loop