###将数组里有关数字的字符串形式的数字抽离出来
#["1","2"] -> [1,2]
#data modify storage t_algorithm_lib:array take_num.list set value ["1","2","3"]
#
data modify storage t_algorithm_lib:array take_num.list2 set value []
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:array take_num.list
execute if score #tal.str.temp.list_count tal.input matches 1.. run function t_algorithm_lib:array/take_str_num_for_array/loop
