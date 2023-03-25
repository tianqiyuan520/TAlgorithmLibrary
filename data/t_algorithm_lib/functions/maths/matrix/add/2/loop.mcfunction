##遍历
data modify storage t_algorithm_lib:maths matrix.temp.list3 set from storage t_algorithm_lib:maths matrix.temp.list1[0]
data modify storage t_algorithm_lib:maths matrix.temp.list4 set from storage t_algorithm_lib:maths matrix.temp.list2[0]

data modify storage t_algorithm_lib:maths matrix.add.result append value []
execute store result score #tal.maths.matrix.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list1[0]
execute store result score #tal.maths.matrix.list_count3 tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list2[0]
##内部元素个数
execute unless score #tal.maths.matrix.list_count2 tal.str_parser = #tal.maths.matrix.list_count3 tal.str_parser run scoreboard players set #tal.maths.matrix.add.fail tal.str_parser 1
##嵌套遍历
execute if score #tal.maths.matrix.list_count2 tal.str_parser = #tal.maths.matrix.list_count3 tal.str_parser run function t_algorithm_lib:maths/matrix/add/2/loop2


data remove storage t_algorithm_lib:maths matrix.temp.list1[0]
data remove storage t_algorithm_lib:maths matrix.temp.list2[0]

execute store result score #tal.maths.matrix.list_count tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list1
execute if score #tal.maths.matrix.list_count tal.str_parser matches 1.. if score #tal.maths.matrix.add.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/matrix/add/2/loop
