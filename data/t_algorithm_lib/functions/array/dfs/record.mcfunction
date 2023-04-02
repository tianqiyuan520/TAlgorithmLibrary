##判断是数组或元素
scoreboard players set #tal.array.dfs.success tal.input 0

data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:array dfs.elements
function t_algorithm_lib:array/elements_type_check/start

##如果为列表等
execute if data storage t_algorithm_lib:array temp{return:'TAG_Byte_Array'} run scoreboard players set #tal.array.dfs.success tal.input 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_List'} run scoreboard players set #tal.array.dfs.success tal.input 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_Int_Array'} run scoreboard players set #tal.array.dfs.success tal.input 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_Long_Array'} run scoreboard players set #tal.array.dfs.success tal.input 1
execute if score #tal.array.dfs.success tal.input matches 1 run function t_algorithm_lib:array/dfs/is_list
execute if score #tal.array.dfs.success tal.input matches 0 run function t_algorithm_lib:array/dfs/not_list
