# tellraw @a ["old ",{"nbt":"quick_sort.mian.main_tree[-1]","storage":"t_algorithm_lib:array","color":"#348CD6"}]
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree append value [[[],[]],[-1],[0],[0]]


execute store result score #tal.array.quick_sort.index_ tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][1][0]
execute if score #tal.array.quick_sort.index_ tal.input matches 0 run data modify storage t_algorithm_lib:array quick_sort.part.input set from storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][0]

execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][0] append from storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][1][0]
execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data remove storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][1][0]


execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.part.input set from storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][1]


function t_algorithm_lib:array/sort/quick_sort/main/partition/start
##
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][0] append from storage t_algorithm_lib:array quick_sort.part.list[]
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][1] append from storage t_algorithm_lib:array quick_sort.part.list2[]
##
execute store result score #tal.array.quick_sort.i tal.input run data get storage t_algorithm_lib:array quick_sort.part.list

execute if score #tal.array.quick_sort.index_ tal.input matches 0 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][2][0] set from storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][2][0]
execute if score #tal.array.quick_sort.index_ tal.input matches 0 store result storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][3][0] int 1 run scoreboard players remove #tal.array.quick_sort.i tal.input 1

execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][3][0] set from storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][3][0]
execute if score #tal.array.quick_sort.index_ tal.input matches 1 store result storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][2][0] int 1 run scoreboard players add #tal.array.quick_sort.i tal.input 1
# tellraw @a ["新 ",{"nbt":"quick_sort.mian.main_tree[-1]","storage":"t_algorithm_lib:array","color":"#BA86A1"}]
