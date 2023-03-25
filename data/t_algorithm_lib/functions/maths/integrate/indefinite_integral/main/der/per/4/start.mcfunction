
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.per[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'*'} run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/start



data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.per[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[],["^"],[[-1]],['*'],[],['^'],['('],[],['+'],[[1]],[')']],[10],[0,0,0,0,0,0,0,0,0,0,0]]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[2]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][4] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][7] set from storage t_algorithm_lib:maths integrate.main.new_data[2]




data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.per[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[],['+'],[]],[0],[1,0,1]]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][2] set from storage t_algorithm_lib:maths integrate.main.new_data[2]

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.per[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[],['-'],[]],[0],[1,0,1]]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][2] set from storage t_algorithm_lib:maths integrate.main.new_data[2]