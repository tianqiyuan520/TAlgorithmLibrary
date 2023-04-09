
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.per[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[[],['*'],[],['+'],[],['*'],[]],[2],[0,0,1,0,0,0,1]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][0] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][2] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][4] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'*'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][6] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]



data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.per[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[[],['*'],[],['^'],['('],[],['-'],[1],[')'],['*'],[]],[10],[0,0,0,0,0,0,0,0,0,0,1]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][0] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][2] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][5] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'^'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][10] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]


data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.per[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[['('],[[1]],[')'],['/'],['('],[],['^'],[[2]],[')'],['*'],['('],[],['*'],[],['-'],[],['*'],[],[')']],[13],[0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][5] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][11] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][13] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][15] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'/'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][17] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]


data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.per[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[[],['+'],[]],[0],[1,0,1]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][0] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'+'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][2] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.per[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[[],['-'],[]],[0],[1,0,1]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][0] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'-'} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][2] set from storage t_algorithm_lib:maths auto_derivation.main.new_data[2]