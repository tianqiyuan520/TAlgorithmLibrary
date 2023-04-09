data modify storage t_algorithm_lib:maths auto_derivation.temp.data2 set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
data remove storage t_algorithm_lib:maths auto_derivation.temp.data2[-1]
data remove storage t_algorithm_lib:maths auto_derivation.temp.data2[0]

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'cos('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[[[-1]],['*'],['sin('],[],[')'],['*'],['('],[],[')']],[7],[0,0,0,0,0,0,0,1,0]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'cos('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][3] set from storage t_algorithm_lib:maths auto_derivation.temp.data2
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'cos('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][7] set from storage t_algorithm_lib:maths auto_derivation.temp.data2

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'sin('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[['cos('],[],[')'],['*'],['('],[],[')']],[5],[0,0,0,0,0,1,0]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'sin('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][1] set from storage t_algorithm_lib:maths auto_derivation.temp.data2
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'sin('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][5] set from storage t_algorithm_lib:maths auto_derivation.temp.data2

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'tan('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[['tan('],[],[')'],['^'],[[2]],['*'],['('],[],[')'],['+'],[]],[7],[0,0,0,0,0,0,0,1,0,0,1]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'tan('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][1] set from storage t_algorithm_lib:maths auto_derivation.temp.data2
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'tan('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][7] set from storage t_algorithm_lib:maths auto_derivation.temp.data2
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'tan('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][10] set from storage t_algorithm_lib:maths auto_derivation.temp.data2

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'ln('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[['('],[[1]],[')'],['/'],['('],[],[')'],['*'],['('],[],[')']],[9],[0,0,0,0,0,0,0,0,0,1,0]]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'ln('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][5] set from storage t_algorithm_lib:maths auto_derivation.temp.data2
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'ln('} run data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0][9] set from storage t_algorithm_lib:maths auto_derivation.temp.data2

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'log('} run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/func_log
