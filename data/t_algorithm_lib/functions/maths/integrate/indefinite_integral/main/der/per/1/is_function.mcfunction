data modify storage t_algorithm_lib:maths integrate.temp.data2 set from storage t_algorithm_lib:maths integrate.main.new_data[0]
data remove storage t_algorithm_lib:maths integrate.temp.data2[-1]
data remove storage t_algorithm_lib:maths integrate.temp.data2[0]

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'cos('} run data modify storage t_algorithm_lib:maths integrate.main_tree append value [[['sin('],[],[')']],[2],[0,0,0]]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'cos('} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][1] set from storage t_algorithm_lib:maths integrate.temp.data2

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'sin('} run data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[-1],["*"],['cos('],[],[')']],[4],[0,0,0,0,0]]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'sin('} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][3] set from storage t_algorithm_lib:maths integrate.temp.data2
