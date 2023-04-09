##返回 L>= R
execute store result score #tal.array.quick_sort.index tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][2][0]
execute store result score #tal.array.quick_sort.index2 tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][3][0]
execute store result score #tal.array.quick_sort.index3 tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][1][0]
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree
execute store result score #tal.array.quick_sort.count2 tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][1]

scoreboard players set #tal.array.quick_sort.return tal.input 0
execute if score #tal.array.quick_sort.index tal.input >= #tal.array.quick_sort.index2 tal.input run scoreboard players set #tal.array.quick_sort.return tal.input 1
execute if score #tal.array.quick_sort.index3 tal.input matches 0 if score #tal.array.quick_sort.count2 tal.input matches 1 run scoreboard players set #tal.array.quick_sort.return tal.input 1
execute if score #tal.array.quick_sort.index3 tal.input matches 2.. run scoreboard players set #tal.array.quick_sort.return tal.input 1

execute if score #tal.array.quick_sort.return tal.input matches 1 if score #tal.array.quick_sort.count tal.input matches 2.. run function t_algorithm_lib:array/sort/quick_sort/main/return
execute if score #tal.array.quick_sort.return tal.input matches 1 if score #tal.array.quick_sort.count tal.input matches 1 run function t_algorithm_lib:array/sort/quick_sort/main/end

execute if score #tal.array.quick_sort.return tal.input matches 0 run function t_algorithm_lib:array/sort/quick_sort/main/no_return


##[[[[],[]],[-1],[0],[8]]]
# tellraw @a ["当前树",{"nbt":"quick_sort.mian.main_tree[]","storage":"t_algorithm_lib:array","color":"#BA86A1"}]
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree
scoreboard players remove #tal.array.quick_sort.loop tal.input 1
execute if score #tal.array.quick_sort.count tal.input matches 1.. if score #tal.array.quick_sort.loop tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/main/main